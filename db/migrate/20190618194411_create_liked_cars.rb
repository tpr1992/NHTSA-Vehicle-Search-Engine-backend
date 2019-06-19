class CreateLikedCars < ActiveRecord::Migration[5.2]
  def change
    create_table :liked_cars do |t|
      t.integer :user_id
      t.integer :car_id
      t.timestamps
    end
  end
end
