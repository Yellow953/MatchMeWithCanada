User.create(email: "test@test.com", password: "qwe123", password_confirmation:"qwe123", role: 1, phone:"1", name:"test", price: nil, description: nil)

# client
5.times do
    user = User.new
    user.name = Faker::Name.name
    user.email = Faker::Internet.email
    user.password = "qwe123"
    user.password_confirmation = "qwe123"
    user.role = 0
    user.phone = Faker::PhoneNumber.phone_number
    user.price = nil
    user.description = nil
    user.save
end

# english teacher
5.times do
    user = User.new
    user.name = Faker::Name.name
    user.email = Faker::Internet.email
    user.password = "qwe123"
    user.password_confirmation = "qwe123"
    user.role = 2
    user.phone = Faker::PhoneNumber.phone_number
    user.price = 15
    user.description = "lorem ipsum dolor sit am bodies"
    user.save
end

# french teacher
5.times do
    user = User.new
    user.name = Faker::Name.name
    user.email = Faker::Internet.email
    user.password = "qwe123"
    user.password_confirmation = "qwe123"
    user.role = 3
    user.phone = Faker::PhoneNumber.phone_number
    user.price = 15
    user.description = "lorem ipsum dolor sit am bodies"
    user.save
end

# recruiter
5.times do
    user = User.new
    user.name = Faker::Name.name
    user.email = Faker::Internet.email
    user.password = "qwe123"
    user.password_confirmation = "qwe123"
    user.role = 4
    user.phone = Faker::PhoneNumber.phone_number
    user.price = 250
    user.description = "lorem ipsum dolor sit am bodies"
    user.save
end

# material
5.times do
    material = Material.new
    material.name = Faker::Name.name
    material.price = 15
    material.link = "https://www.amazon.com"
    material.save
end