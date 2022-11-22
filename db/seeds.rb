require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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

taproom_1 = Taproom.create(
  name: "LORD HOBO",
  address: "5 Draper St",
  city: "WOBURN",
  state: "MA",
  zipcode: "01801",
  monday_hours: "4PM - 10PM",
  tuesday_hours: "4PM - 10PM",
  wednesday_hours: "4PM - 10PM",
  thursday_hours: "4PM - 10PM",
  friday_hours: "11AM - 12AM",
  saturday_hours: "11AM - 12AM",
  sunday_hours: "11AM - 10PM",
  description: "Lord Hobo Brewing Company, founded in 2015, was born out of a Boston craft beer bar. Now into our seventh year of operation, we continue to grow, bringing innovative New England style beers to our thirsty and dedicated fans. We are a self-made company that believes our consumers deserve to be recognized and appreciated for who they are.",
  dogs: "Humans only",
  kitchen: "In-house menu",
  patio: "Not at this time, check back soon for more!",
  logo: "https://scontent-bos5-1.xx.fbcdn.net/v/t1.6435-9/115943569_4811969638843788_42923476619073724_n.png?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=u0tVKYhWdwMAX-X1Ry3&_nc_ht=scontent-bos5-1.xx&oh=00_AfDmHmk2egvdXsnu3lsn77s5lCkNih3TwMgtTVbyhuCZYg&oe=639C4411",
  image_url: "https://lordhobo.s3.amazonaws.com/wp-content/uploads/sites/3/2021/05/22230320/WOBURN-HERO.jpg",
  instagram: "https://www.instagram.com/lordhobobrewing/?hl=en",
  twitter: "https://twitter.com/lordhobobrewing?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor",
  facebook: "https://www.facebook.com/lordhobobrewing/",
  official_webpage: "https://lordhobo.com/",
  user: user_1
)

taproom_2 = Taproom.create(
  name: "NIGHT SHIFT BREWING",
  address: "87 Santilli Hwy",
  city: "EVERETTE",
  state: "MA",
  zipcode: "02149",
  monday_hours: "12PM - 11PM",
  tuesday_hours: "12PM - 11PM",
  wednesday_hours: "12PM - 11PM",
  thursday_hours: "12PM - 11PM",
  friday_hours: "12PM - 11PM",
  saturday_hours: "12PM - 11PM",
  sunday_hours: "12PM - 8PM",
  description: "Night Shift Brewing began as an idea. In a small kitchen on Josephine Avenue in Somerville, MA, Rob Burns, Mike O'Mara, and Michael Oxton began homebrewing beer for friends and family. This hobby took place after work, going late into the evenings, becoming what they called their 'night shift.' It was 2007, and they hoped to share something more interesting and flavorful than the commercial options on shelves.\nWe maintain a relentless focus on three values: inclusivity, integrity, and innovation. And we believe strongly in the mantra 'all styles welcome', this refers to what we produce, but also to the way we run our business. Join us in welcoming all styles of beverages, people, and ideas. We are here to celebrate great flavors and great friends. Welcome to the Night Shift.",
  dogs: "All paws welcome!",
  kitchen: "Food trucks",
  patio: "Seasonally",
  logo: "https://i.pinimg.com/originals/3d/ac/eb/3daceb0e7d4f13f01708875480e34647.jpg",
  image_url: "https://nightshiftbrewing.com/wp-content/uploads/2020/02/Home_Location_Everett.jpg",
  instagram: "https://www.instagram.com/nightshiftbrewing/?hl=en",
  twitter: "https://twitter.com/nightshiftbeer?lang=en",
  facebook: "https://www.facebook.com/NightShiftBeer/",
  official_webpage: "https://nightshiftbrewing.com/",
  user: user_1
)

taproomReview_1 = TaproomReview.create(
  title: "First time visiting and will definitely be coming back!",
  body: "Can see why this place comes so highly recommended! If you like IP's then you must go here. Crowded as expected on a Saturday night, finding seats for 6 of us took a while. Only downside was only being allowed to open one tab for a large group.",
  overall_rating: "5",
  service_rating: "5",
  ambience_rating: "4",
  group_accommodations_rating: "4",
  favorite_beer: "Boom Sauce Double IPA",
  photo: "https://s3-media0.fl.yelpcdn.com/bphoto/OuWh0EIfDIaVWwKK9GKdhg/o.jpg",
  user: user_1,
  taproom: taproom_1,
)

taproomReview_2 = TaproomReview.create(
  title: "See why this place is so popular!",
  body: "Best hidden gem in Everette. Tons of beer options including seltzers, and you can sit outside on their dog-friendly patio. The only food available was from two food trucks outside, that apparently rotate daily. But on the plus side you are allowed to bring your own food in!",
  overall_rating: "5",
  service_rating: "4",
  ambience_rating: "4",
  group_accommodations_rating: "4",
  favorite_beer: "Nite Lite",
  photo: "https://s3-media0.fl.yelpcdn.com/bphoto/tiqaNa05j988yld0hcSuCQ/o.jpg",
  user: user_2,
  taproom: taproom_2
)

beer_1 = Beer.create(
  name: "Boom Sauce Double IPA",
  style: "IPA",
  abv: "7.8%",
  description: "Boomsauce is a big & bold IPA with a complex hop profile. With five different hops, it hits you with strong tropical fruit flavors before mellowing out to finish with a hint of earthiness. Each subsequent taste opens up the dynamic layers of complexity woven throughout this beer. Imagine fresh pressed fruit without the sweetness, perfect for that Saturday afternoon pick-me-up or a late-night gathering of friends.",
  brewer: "LORD HOBO",
  image_url: "https://lordhobo.s3.amazonaws.com/wp-content/uploads/2021/05/22230304/BOOMSAUCE.png",
  user: user_1,
  taproom: taproom_1
)

beer_2 = Beer.create(
  name: "Nite Lite",
  style: "Light lager",
  abv: "4.3%",
  description: "Low ABV and easy-sipping, Nite Lite is a truly delicious craft light lager that will pair all night with every party. The beer pours sunny gold with a soft, white head. Aromas of fresh bread on the nose. Sips crisp and refreshing, with hints of biscuit and citrus. Finishes clean and light, inviting another sip.",
  brewer: "Night Shift Brewing",
  image_url: "https://nightshiftbrewing.com/wp-content/uploads/2020/01/Core-Shot_Nite-Lite-16oz-and-12oz_Square_2021-e1651436722300.jpg",
  user: user_2,
  taproom: taproom_2
)

beerReview_1 = BeerReview.create(
  title: "New go to beer!",
  name: "Boom Sauce Double IPA",
  overall_rating: "5",
  pour: "On Tap",
  body: "Best double ipa available, so glad it's one of their year-round beers",
  image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/IiCqCxRM89uj9ad1TQx2cw/o.jpg",
  user: user_1,
  beer: beer_1,
)

beerReview_2 = BeerReview.create(
  title: "Found my new favorite beer",
  name: "Nite Lite",
  overall_rating: "4",
  pour: "Can",
  body: "One of the best light lagers I've ever had, was so good I got a 6pack to take home. Definitely recommend you try this",
  image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/IiCqCxRM89uj9ad1TQx2cw/o.jpg",
  user: user_2,
  beer: beer_2
)