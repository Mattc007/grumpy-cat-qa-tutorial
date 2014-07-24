# create some users!
100.times do |_|
  User.create(name: "#{Forgery::Name.first_name} #{Forgery::Name.last_name}",
              email: Forgery::Internet.email_address,
              location: Forgery::Address.city,
              about: Forgery::LoremIpsum.words(18))
end

# create some sightings!
User.all.each do |user|
  Random.new.rand(0..10).times do |n|
    Sighting.create(location: Forgery::Address.city,
                    timestamp: Forgery::Date.date(max_delta: 1200, past: true),
                    comment: Forgery::LoremIpsum.words(10),
                    user_id: user.id,
                    mood: Sighting::VALID_MOODS[n % Sighting::VALID_MOODS.count])
  end
end
