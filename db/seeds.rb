# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[1,2,3,4].each do |num|
  User.create(
    username:"user#{num}",
    email: "user#{num}@example.com",
    password: "test123"
  )
end

["Nature", "NYC", "Art", "Humor", "Food"].each do |tag_name|
  Tag.create(name: tag_name)
end

url = "http://www.defenders.org/sites/default/files/styles/large/public/dolphin-kristian-sekulic-isp.jpg"

pic1 = Picture.create(
  image_url: url,
  title: "Saw a dolphin!",
  user_id: User.first.id
)

comment1 = Comment.create(
  content: "Great Job!",
  picture_id: 1,
  user_id: User.first.id
)

PictureTag.create(
  picture_id: 1,
  tag_id: Tag.first.id
)
