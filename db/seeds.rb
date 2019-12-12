start_time = Time.now

# Destroy

puts "Destroying all data"

PostUpvote.destroy_all
Post.destroy_all
User.destroy_all

# Creating Users
puts "Creating John as a user..."

john = User.create!(
      email: "mackwolves@hotmail.fr",
      username: "Mackreator",
      password: "password"
  )

puts "Creating Louis as a user..."

louis = User.create!(
      email: "louis@hotmail.fr",
      username: "Louis",
      password: "password"
  )

puts "Creating Melodie as a user..."

melodie = User.create!(
      email: "melodie@hotmail.fr",
      username: "Melodie",
      password: "password"
  )

puts "Creating Aaron as a user..."

aaron = User.create!(
      email: "aaron@hotmail.fr",
      username: "Aaron",
      password: "password"
  )

puts "Creating Tony as a user..."

tony = User.create!(
      email: "tony@hotmail.fr",
      username: "scarface",
      password: "password"
  )


puts "Creating Upvotes for Johns Posts..."

10.times {
  post = Post.create!(
            title: Faker::Restaurant.name,
            content: Faker::Restaurant.description,
            user: john
          )
  rand(1...1000).times {
  upvote = PostUpvote.create!(
            user: [john, louis, melodie, aaron, tony].sample,
            post: post
          )
  }
}

puts "Creating Upvotes for Louis's Posts..."

10.times {
  post = Post.create!(
            title: Faker::Restaurant.name,
            content: Faker::Restaurant.description,
            user: louis
          )
  rand(1...1000).times {
  upvote = PostUpvote.create!(
            user: [john, louis, melodie, aaron, tony].sample,
            post: post
          )
  }
}

puts "Creating Upvotes for Melodies Posts..."

10.times {
  post = Post.create!(
            title: Faker::Restaurant.name,
            content: Faker::Restaurant.description,
            user: melodie
          )
  rand(1...1000).times {
  upvote = PostUpvote.create!(
            user: [john, louis, melodie, aaron, tony].sample,
            post: post
          )
  }
}

puts "Creating Upvotes for Aarons Posts..."

10.times {
  post = Post.create!(
            title: Faker::Restaurant.name,
            content: Faker::Restaurant.description,
            user: aaron
          )
  rand(1...1000).times {
  upvote = PostUpvote.create!(
            user: [john, louis, melodie, aaron, tony].sample,
            post: post
          )
  }
}

puts "Creating Upvotes for Tonys Posts..."

10.times {
  post = Post.create!(
            title: Faker::Restaurant.name,
            content: Faker::Restaurant.description,
            user: tony
          )
  rand(1...1000).times {
  upvote = PostUpvote.create!(
            user: [john, louis, melodie, aaron, tony].sample,
            post: post
          )
  }
}

puts "Seed finished in #{ (Time.now - start_time).round(1) }s !"
