class Sighting < ActiveRecord::Base
  belongs_to :user
  scope :most_recent, -> { order("sightings.'when' DESC") }

  VALID_MOODS = ['Grumpy',
                 'Somewhat Grumpy',
                 'Extremely Grumpy',
                 'Delightfully Grumpy',
                 'Grumpy Grumpy',
                 'REALLY Grumpy (WATCH OUT)',
                 'Crunky Grumpy',
                 'Mildly Grumpy',
                 'Playfully Grumpy',
                 'Neurotically Grumpy',
                 'Surprisingly Grumpy']
end
