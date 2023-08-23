class Medicine < ApplicationRecord
  has_many :pharmacies, through: :availabilities
  has_many :availabilities



end
