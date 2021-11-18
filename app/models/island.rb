class Island < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_address?
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true }
     }

end
