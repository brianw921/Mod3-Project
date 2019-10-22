class CreateShowRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :show_rooms do |t|
      t.integer :num_of_seats

      t.timestamps
    end
  end
end
