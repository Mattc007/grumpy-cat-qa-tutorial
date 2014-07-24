class User < ActiveRecord::Base
  has_many :sightings
  has_many :friends, class_name: "User"

  validates :name, presence: true,
            length: { in: 3..25 }
  validates :location, presence: true,
            length: { in: 3..50 }
  validates :about, presence: true,
            length: { in: 3..200 }
end
