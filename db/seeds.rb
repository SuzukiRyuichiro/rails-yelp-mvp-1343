# frozen_string_literal: true

# db/seeds.rb

# Clear existing data
Restaurant.destroy_all

# Create 50 random restaurants
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )

  # Optionally, you can also create random reviews for each restaurant here
  rand(1..5).times do
    restaurant.reviews.create!(
      rating: rand(1..5),
      content: Faker::Restaurant.review
    )
  end
end

puts "Created #{Restaurant.count} random restaurants with reviews!"
