class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  before_action :authenticate_user!
  before_action :correct_user?, :except => [:index]

  def index
    @user = current_user
  end

end
