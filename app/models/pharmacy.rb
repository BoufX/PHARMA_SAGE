class Pharmacy < ApplicationRecord
    has_many :medicines, through: :availabilities
    has_many :availabilities
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
end
