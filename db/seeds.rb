User.create!(name:  "Example User", email: "example@railstutorial.org",
<<<<<<< HEAD
  password: "foobar", password_confirmation: "foobar", admin: true,
  activated: true, activated_at: Time.zone.now)
=======
  password: "foobar", password_confirmation: "foobar", admin: true)
>>>>>>> b331a76... chap10

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name, email: email, password: password,
<<<<<<< HEAD
    password_confirmation: password, activated: true,
    activated_at: Time.zone.now)
=======
    password_confirmation: password)
>>>>>>> b331a76... chap10
end
