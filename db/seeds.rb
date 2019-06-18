# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all




  @url = "http://www.recipepuppy.com/api/"
  (1..10).each do |x|
    @names << HTTParty.get(@url).parsed_response['name']
  end

5.times do
  User.create(name: Faker::Name.name, username: Faker::Name.initials + rand(1980..2019).to_s, password: 123.to_s)
end
