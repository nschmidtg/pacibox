class Paciente < ApplicationRecord
	belongs_to :user
	has_one :historial
	has_many :horas
end
