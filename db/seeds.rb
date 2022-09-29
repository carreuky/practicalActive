puts "🌱 Seeding spices..."

# Seed your database here
10.times do 

    Basketball.create(
        player:Faker::Sports::Basketball.player,
        team:Faker::Sports::Basketball.team,
        position:Faker::Sports::Basketball.position
    )

end

puts "✅ Done seeding!"
