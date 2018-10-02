class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.string :birth_place
      t.integer :birth_year
      t.string :birth_name
      t.string :hit_single
      t.string :awards
      t.string :biggest_album
      t.string :current_partner
      t.string :catch_phrase
      t.string :first_child
      t.string :famous_alias
      t.string :height
    end
  end
end
