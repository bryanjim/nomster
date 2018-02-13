class Place < ApplicationRecord
  #relationships
  belongs_to :user
  has_many :comments
  
  geocoded_by :address
  after_validation :geocode

  #data validation
  validates :name, :description, presence: true, length: {minimum: 3}
  validates :address, presence: true, length: {minimum: 10}

end
