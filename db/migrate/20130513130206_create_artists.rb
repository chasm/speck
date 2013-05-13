class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :age
      t.boolean :is_available, default: true
      t.date :last_album_released_on
      t.string :genre
      t.string :instrument_played
      t.boolean :too_old_to_rock_n_roll, default: false

      t.timestamps
    end
  end
end
