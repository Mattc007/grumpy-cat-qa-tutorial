class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :location
      t.timestamp :when
      t.string :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
