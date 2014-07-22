class Sighting < ActiveRecord::Base
  belongs_to :user
  scope :most_recent, -> { order("sightings.'when' DESC") }
end
