class AddMoodToSighting < ActiveRecord::Migration
  def change
    add_column :sightings, :mood, :string
  end
end
