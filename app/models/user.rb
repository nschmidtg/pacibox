class User < ApplicationRecord
	belongs_to :role
	has_many :pacientes
	has_many :horas
	has_and_belongs_to_many :consultums
	has_many :properties, :class_name => :Consultum, :foreign_key => :owner_id


  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

end
