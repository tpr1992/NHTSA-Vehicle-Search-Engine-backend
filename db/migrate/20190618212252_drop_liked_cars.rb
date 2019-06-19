class DropLikedCars < ActiveRecord::Migration[5.2]
  def change
    drop_table :liked_cars
  end
end
