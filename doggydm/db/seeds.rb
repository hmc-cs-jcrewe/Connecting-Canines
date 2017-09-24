# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  # encoding: utf-8

  environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")

  def seed_image(file_name)
    File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
  end


  user1 = User.create({ email: 'test@test.com', password: 'password', owner_role: true, appreciator_role: false })
  user2 = User.create({ email: 'test2@test.com', password: 'password', owner_role: true, appreciator_role: false })
  user3 = User.create({ email: 'test3@test.com', password: 'password', owner_role: false, appreciator_role: true })

  post1 = Post.create({ names: 'Daisy', likes: 27, description: 'A true flower-child.', image: seed_image('dog1')})
  post1.user_id = user1.id
  post2 = Post.create({ names: 'Ghost', likes: 13, description: 'Spooo00oOO0Oky', image: seed_image('dog2')})
  post2.user_id = user2.id
  post3 = Post.create({ names: 'Butterscotch', likes: 20, description: 'I\' corgeous', image: seed_image('dog3')})
  post3.user_id = user1.id
  post4 = Post.create({ names: 'Sally', likes: 10, description: 'I love long walks through the flowers', image: seed_image('dog4')})
  post4.user_id = user1.id
  post5 = Post.create({ names: 'Skipper', likes: 10, description: 'This doesn\'t taste like a bone', image: seed_image('dog14')})
  post5.user_id = user1.id
  post6 = Post.create({ names: 'Briar', likes: 10, description: 'I\'m the best boy', image: seed_image('dog19')})
  post6.user_id = user2.id

