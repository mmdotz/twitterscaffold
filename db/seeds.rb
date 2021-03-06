# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  user = User.new({
    username: Faker::Internet.user_name
     })

  user.password = "password"
  user.save!

  [2, 4, 6].sample.times do
    tweet = Tweet.create({
      msg:      Faker::Hacker.say_something_smart,
      user_id:  user.id
      })
  end
 user.save!
end
