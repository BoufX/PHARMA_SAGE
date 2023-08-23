class Pharmacy < ApplicationRecord
    has_many :medicines, through: :availabilities
    has_many :availabilities
end
