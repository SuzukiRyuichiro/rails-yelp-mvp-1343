# frozen_string_literal: true

# db/seeds.rb

# Clear existing data
Restaurant.destroy_all

# Create 50 random restaurants
Restaurant.create(name: 'Epicure', category: 'french', address: 'Rua das Flores 123, Porto',
                  phone_number: '+351 220 123 456')
Restaurant.create(name: 'La Petite Maison', category: 'french', address: 'Avenida dos Aliados 45, Porto',
                  phone_number: '+351 220 234 567')
Restaurant.create(name: 'Trattoria Toscana', category: 'italian', address: 'Rua de Santa Catarina 67, Porto',
                  phone_number: '+351 220 345 678')
Restaurant.create(name: 'Sushi Zen', category: 'japanese', address: 'Rua do Almada 89, Porto',
                  phone_number: '+351 220 456 789')
Restaurant.create(name: 'Beijing Palace', category: 'chinese', address: 'Rua de Cedofeita 23, Porto',
                  phone_number: '+351 220 567 890')
Restaurant.create(name: 'Rome Delight', category: 'italian', address: 'Praça da Ribeira 34, Porto',
                  phone_number: '+351 220 678 901')
Restaurant.create(name: 'Tokyo Express', category: 'japanese', address: 'Rua das Carmelitas 56, Porto',
                  phone_number: '+351 220 789 012')
Restaurant.create(name: 'Parisian Bistro', category: 'french', address: 'Rua de Mouzinho da Silveira 78, Porto',
                  phone_number: '+351 220 890 123')
Restaurant.create(name: 'Shanghai House', category: 'chinese', address: 'Rua de Passos Manuel 12, Porto',
                  phone_number: '+351 220 901 234')
Restaurant.create(name: 'Brussels Cafe', category: 'belgian', address: 'Rua de Clérigos 90, Porto',
                  phone_number: '+351 220 912 345')

Restaurant.all.each do |restaurant|
  # Optionally, you can also create random reviews for each restaurant here
  rand(1..5).times do
    restaurant.reviews.create!(
      rating: rand(1..5),
      content: Faker::Restaurant.review
    )
  end
end

puts "Created #{Restaurant.count} random restaurants with reviews!"
