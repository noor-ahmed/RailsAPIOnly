UserSession.create!(
    email: "mail1@demo.com",
    user_name: "SSSS",
    password: "123456"
)

UserSession.create!(
    user_name: Faker::Name.first_name,
    email: "mail2@demo.com",
    password: "123456"
)

UserSession.create!(
    user_name: Faker::Name.first_name,
    email: "mail3@demo.com",
    password: "123456"
)

UserSession.create!(
    user_name: Faker::Name.first_name,
    email: "mail4@demo.com",
    password: "123456"
)