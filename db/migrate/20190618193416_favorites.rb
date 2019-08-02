class Favorites < ActiveRecord::Migration[5.2]
  def change
    create_table :user_favorites do |t|
      t.integer :user_id
      t.integer :car_id

      t.timestamps
    end
  end
end
