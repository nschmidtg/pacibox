class Paciente < ApplicationRecord
	belongs_to :user
	has_one :historial
	has_many :horas
	validates :name, :last_name, :mail, :phone, :presence => true
end
