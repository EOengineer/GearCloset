# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create User
u = User.new(first_name: 'Test', last_name: 'User', email: "test_user@example.com")
u.password = 'password'
u.confirm # Confirm the user so they can login
u.save!

puts "Created User: #{u.email}"

# Create Collections
c = Collection.create!(name: 'Test Collection', description: 'This is a test collection.', user: u)

puts "Created Collection: #{c.name}"