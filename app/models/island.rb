class Island < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_address?
  after_validation :geocode, if: :will_save_change_to_location?

end
