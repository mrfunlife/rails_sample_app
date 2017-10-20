User.create!(name:  "Dong Gia Loc",
    email: "dgfunlife@gmail.com",
    password:              "123456",
    password_confirmation: "123456",
    admin:     true,
    activated: true,
    activated_at: Time.zone.now)

99.times do |n|
  name  = "Dong Gia Loc#{n}"
  email = "gialoc#{n+1}@gmail.com"
  password = "123456"
  User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password,
      activated: true,
      activated_at: Time.zone.now)
end

