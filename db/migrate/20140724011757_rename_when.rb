class RenameWhen < ActiveRecord::Migration
  def change
    rename_column :sightings, :when, :timestamp
  end
end
