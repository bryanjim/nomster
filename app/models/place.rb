class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, :description, presence: true, length: {minimum: 3}
  validates :address, presence: true, length: {minimum: 10}

end
