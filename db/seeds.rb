# create some users
100.times do |_|
  User.create(name: "#{Forgery::Name.first_name} #{Forgery::Name.last_name}",
              email: Forgery::Internet.email_address,
              location: Forgery::Address.city,
              about: Forgery::LoremIpsum.words(25))
end
