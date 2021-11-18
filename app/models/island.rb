class Island < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings

  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true }
     }
end
