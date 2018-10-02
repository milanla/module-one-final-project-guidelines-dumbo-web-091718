class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :question_id
      t.integer :player_id
      t.integer :artist_id 
    end
  end
end
