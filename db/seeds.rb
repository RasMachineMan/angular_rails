# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  user = User.new(
      name: Faker::Name.name,
      age:  Faker::Number.between(1, 100),
      nationality: Faker::Address.country
    )
  user.save

    10.times do Item.create(
      name: Faker::Commerce.product_name,
      price: Faker::Commerce.price,
      user: user
    )
  end
end
