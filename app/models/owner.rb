class Owner < ActiveRecord::Base
  has_many :dogs
  has_many :appointments, through: :dogs
  has_many :grommers, through: :dogs and :appointments
end
