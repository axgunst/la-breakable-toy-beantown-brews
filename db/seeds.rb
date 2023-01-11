User.destroy_all
Brand.destroy_all
BrandImage.destroy_all
Taproom.destroy_all
TaproomReview.destroy_all
TaproomImage.destroy_all
Beer.destroy_all
BeerReview.destroy_all
BeerImage.destroy_all

user_admin = User.create(
  email: "admin@gmail.com",
  password: "adminpassword",
  username: "admin",
  role: "admin"
)

user_1 = User.create(
  email: "user1@gmail.com",
  password: "user1password",
  username: "test_user1",
  role: "member"
)

user_2 = User.create(
  email: "user2@gmail.com",
  password: "user2password",
  username: "test_user2",
  role: "member"
)

user_3 = User.create(
  email: "user3@gmail.com",
  password: "user3password",
  username: "test_user3",
  role: "member"
)

user_4 = User.create(
  email: "user4@gmail.com",
  password: "user4password",
  username: "test_user4",
  role: "member"
)

user_5 = User.create(
  email: "user5@gmail.com",
  password: "user5password",
  username: "test_user5",
  role: "member"
)