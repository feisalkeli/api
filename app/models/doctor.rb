class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patient
end
