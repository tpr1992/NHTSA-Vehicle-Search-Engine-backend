# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all


15.times do
  User.create(name: Faker::Name.name, username: Faker::Name.initials + rand(1980..2019).to_s, password: 123.to_s)
end

Car.create(brand: 'Honda', model: 'Civic', user_id: nil)
Car.create(brand: 'Ferrari', model: 'F430', user_id: nil)
Car.create(brand: 'Ferrari', model: '599GTO', user_id: nil)
Car.create(brand: 'Toyota', model: 'Corolla', user_id: nil)
Car.create(brand: 'Toyota', model: 'AE86', user_id: nil)
Car.create(brand: 'Nissan', model: 'GTR', user_id: nil)
Car.create(brand: 'Toyota', model: 'Supra', user_id: nil)
Car.create(brand: 'Toyota', model: 'MR2', user_id: nil)

LikedCar.create(user_id: 1, car_id: 1)
LikedCar.create(user_id: 1, car_id: 3)
LikedCar.create(user_id: 1, car_id: 4)
LikedCar.create(user_id: 2, car_id: 1)
LikedCar.create(user_id: 3, car_id: 1)
LikedCar.create(user_id: 3, car_id: 5)
