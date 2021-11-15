class Booking < ApplicationRecord
  belongs_to :island
  belongs_to :user
end
