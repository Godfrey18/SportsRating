class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
    	t.string :name
    	t.date :Dob
    	t.string :country
    	t.integer :sports_id
    	t.timestamps
    end
  end
end
