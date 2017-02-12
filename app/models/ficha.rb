class Ficha < ApplicationRecord
	belongs_to :historial
	belongs_to :hora
end
