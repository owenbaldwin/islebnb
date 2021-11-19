class Island < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  geocoded_by :location
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
  # after_validation :geocode, if: :will_save_change_to_address?
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true }
    }
end
