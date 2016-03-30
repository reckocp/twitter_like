# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
25.times do
  user = User.create!(name: Faker::Name.name,
                      username: Faker::Internet.user_name)

  4.times do
    Tweet.create!(message: Faker::Hipster.sentence,
                  user_id: user.id)
  end
end
