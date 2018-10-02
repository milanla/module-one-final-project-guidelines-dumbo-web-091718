class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :points, default: 0
      t.string :status, default: 'fan'
    end
  end
end
