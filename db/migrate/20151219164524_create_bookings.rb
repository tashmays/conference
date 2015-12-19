class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :title
      t.string :creator
      t.string :attendees
      t.string :notes
      t.date :date
      t.time :time
      t.string :duration
      t.integer :room_id
      t.string :password, required: true
      

      t.timestamps null: false
    end
  end
end
