class Historial < ApplicationRecord
	belongs_to :paciente
	has_many :eventos
	has_many :fichas
end
