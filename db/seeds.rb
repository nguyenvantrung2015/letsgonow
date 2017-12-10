District.create!([
{name: "Hanoi"},
{name: "Da Nang"},
{name: "Hai Phong"},
{name: "Da Lat"},
{name: "TP Ho Chi Minh"},
{name: "Quang Ninh"},
{name: "Thanh Hoa"}
])
# Users
User.create!(name:  "Example User",
             email: "danghai@railstutorial.org",
             address: "Dong Da, Ha noi, Viet Nam",
             hobby: "xem phim, da bong",
             date_of_birth: "01-01-1998",
             phone_number: "0123456789",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  address = "Dong Da, Ha noi, Viet Nam"
  hobby = "xem phim, da bong"
  date_of_birth = "01-01-1998"
  phone_number = "0123456789"
  User.create!(name:  name,
               email: email,
               address: address,
               hobby: hobby,
               date_of_birth: date_of_birth,
               phone_number: phone_number,
               password:              password,
               password_confirmation: password)
end

# Microposts
users = User.order(:created_at).take(6)
50.times do |n|
  content = "I dont know reason why I love you, but you are perfect"
  title = "this is title for example-#{n+1}"
  picture = "chitiet.png"
  users.each { |user| user.microposts.create!(content: content,
                                              title: title,
                                              like_count: n,
                                              accept: true,
                                              district_id: 1,
                                              picture: picture

    ) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
