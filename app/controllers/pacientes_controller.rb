class PacientesController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session
  skip_before_filter  :verify_authenticity_token

  # GET /pacientes
  # GET /pacientes.json
  def index
    @pacientes = current_user.pacientes
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)
    @paciente.user=current_user

    respond_to do |format|
      if @paciente.save
        historial=Historial.new
        historial.paciente=@paciente
        historial.save

        format.html { redirect_to @paciente, notice: 'Paciente creado exitosamente.' }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to @paciente, notice: 'Paciente actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: 'Paciente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find params[:id]
      unless current_user.id == @paciente.user_id
        flash[:notice] = "No tienes acceso a ese paciente."
        redirect_to home_path()
        return
      end
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_params
      params.require(:paciente).permit(:name, :last_name, :rut, :address, :birthdate, :phone, :mail, :user_id)
    end
end
