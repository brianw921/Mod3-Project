class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.string :actors 
      t.string :director
      t.string :released
      t.string :genre
      t.string :rated
      t.string :run_time
      t.string :plot 
      t.string :production
      t.string :a_type

      t.timestamps
    end
  end
end
