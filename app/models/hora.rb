class Hora < ApplicationRecord
	has_one :ficha
	belongs_to :paciente
	belongs_to :user
	belongs_to :consultum
end
