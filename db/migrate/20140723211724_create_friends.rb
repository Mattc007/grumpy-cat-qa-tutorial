class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friendship do |t|
      t.integer :user_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
