class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :features
      t.boolean :reserved

      t.timestamps null: false
    end
  end
end
