# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
User.destroy_all
Category.destroy_all
Comment.destroy_all
PostCategory.destroy_all

post = Post.create(title: "You'll never believe", content: "What happened yesterday")
post2 = Post.create(title: "When I saw what this woman did I cried", content: "She's rescuing all thos puppies")
user = User.create(username: "scalia87", email: "scalia@mail.com")
user2 = User.create(username: "anonymous", email: "anon@mail.com")
category = Category.create(name: "Useful")
category2 = Category.create(name: "Inspirational")
category3 = Category.create(name: "Emotional")
comment = Comment.create(content: "Extra like")
comment2 = Comment.create(content: "Me no like")

post.comments << comment
user.comments << comment
post2.comments << comment2
user.comments << comment2
category.posts << post
category2.posts << post2
category3.posts << post2


