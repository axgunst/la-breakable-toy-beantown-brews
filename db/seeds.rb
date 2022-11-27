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

taproom_3 = Taproom.create(
  name: "HARPOON BREWERY",
  address: "306 Northern Ave",
  city: "BOSTON",
  state: "MA",
  zipcode: "02210",
  monday_hours: "3PM - 8PM",
  tuesday_hours: "12PM - 8PM",
  wednesday_hours: "12PM - 8PM",
  thursday_hours: "12PM - 9PM",
  friday_hours: "12PM - 10PM",
  saturday_hours: "12PM - 10PM",
  sunday_hours: "12PM - 8PM",
  description: "It all started in 1986. Sure, many things have changed since the early days of Harpoon, but much has stayed the same. We still love brewing beer and enjoying it with friends. Below are a few highlights and some of our favorite memories from the past 30 years!",
  dogs: "Humans only",
  kitchen: "In-house menu",
  patio: "Seasonally",
  logo: "https://scontent-bos5-1.xx.fbcdn.net/v/t39.30808-6/307328498_470914698417997_2096280894640461136_n.png?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=zQ0Pz6qD2rwAX9Hp0ez&_nc_ht=scontent-bos5-1.xx&oh=00_AfDiQv8I1TqmF6gmtDx03ecldzMwIDT-nlDODvQupHJSGw&oe=638733E1",
  image_url: "https://scontent-bos5-1.xx.fbcdn.net/v/t39.30808-6/314952541_511810590995074_367210890679900537_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=e3f864&_nc_ohc=QsXDaLR9KegAX-wpJqt&_nc_ht=scontent-bos5-1.xx&oh=00_AfCGh1ORKqXht841-CvilGYkgPA4GubinDMI1zdeUj_nKA&oe=63876A6D",
  instagram: "https://www.instagram.com/harpoonbrewery/",
  twitter: "https://twitter.com/harpoonbrewery",
  facebook: "https://www.facebook.com/TheHarpoonBrewery",
  official_webpage: "https://www.harpoonbrewery.com/",
  user: user_3
)

taproom_4 = Taproom.create(
  name: "DEMOCRACY BREWING",
  address: "35 Temple Place",
  city: "BOSTON",
  state: "MA",
  zipcode: "02111",
  monday_hours: "CLOSED",
  tuesday_hours: "12PM - 9PM",
  wednesday_hours: "12PM - 9PM",
  thursday_hours: "12PM - 10PM",
  friday_hours: "12PM - 10PM",
  saturday_hours: "12PM - 10PM",
  sunday_hours: "12PM - 8PM",
  description: "We are Democracy Brewing, a worker-owned brewery and pub committed to  making great beers and supporting our community. We opened our doors at  35 Temple Place on July 4th, Independence Day 2018! Our mission is to  re-create the traditional public house, brew the best beer in Boston,  pair it with tasty food, and serve it to you in combination with two great American ideals: democracy, and owning your own business.",
  dogs: "Humans only",
  kitchen: "In-house menu",
  patio: "Seasonally",
  logo: "https://scontent-bos5-1.xx.fbcdn.net/v/t39.30808-6/310350434_534117395381392_9210653260840800340_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=QNkUdnXOLM8AX8vGV8q&tn=4N19z9uICGFrRG8m&_nc_ht=scontent-bos5-1.xx&oh=00_AfBT1Ajf_F2hDiN7XMwhbn-Gx50z85hzE2slA_qwnjOKEA&oe=6387A17F",
  image_url: "https://images.squarespace-cdn.com/content/v1/56e9f40c5559861e7849bc8a/1623950921985-L8WMTYZ99OOB6HJ4I8LG/DemocracyBrewing_Space_5+%281%29.jpg?format=750w",
  instagram: "https://www.instagram.com/democracybrewingboston/?hl=en",
  twitter: "https://twitter.com/Democracybrewng",
  facebook: "https://www.facebook.com/democracybrewing1/",
  official_webpage: "https://www.democracybrewing.com/",
  user: user_4
)

taproom_5 = Taproom.create(
  name: "EXHIBIT A",
  address: "81 Morton St",
  city: "FRAMINGHAM",
  state: "MA",
  zipcode: "01702",
  monday_hours: "CLOSED",
  tuesday_hours: "CLOSED",
  wednesday_hours: "5PM - 9PM",
  thursday_hours: "5PM - 9PM",
  friday_hours: "12PM - 10PM",
  saturday_hours: "2PM - 10PM",
  sunday_hours: "12PM - 6PM",
  description: "At Exhibit A Brewing Company, we believe that a beer is greater than the sum of its ingredients. Its the place where you experience it, the memories you create with it, and most importantly the people you enjoy it with. It’s about a commitment to using local ingredients, providing a space where everyone feels welcome, and supporting their local community. That’s why each beer is an exhibit of our passion and commitment to where they come from. Enjoy your Exhibit A beer with family and friends, because every great story begins with Exhibit A.",
  dogs: "All paws welcome!",
  kitchen: "Food trucks",
  patio: "Seasonally",
  logo: "https://scontent-bos5-1.xx.fbcdn.net/v/t31.18172-8/13217459_483837368480314_5188776078778217690_o.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_ohc=INIviEdRlt4AX9sIHWZ&_nc_ht=scontent-bos5-1.xx&oh=00_AfAXt7i9Ugqw-ylhU9j3QQ0vNV9spWH322HXdbrmLyr9Vw&oe=63AA3690",
  image_url: "https://scontent-bos5-1.xx.fbcdn.net/v/t1.6435-9/95665333_1363876413809734_5440532689859903488_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=K-j23NxC9r8AX_OzUSD&_nc_ht=scontent-bos5-1.xx&oh=00_AfAWS-lkcdXTcpId0P-sBYdCsEFzOfdOudaJJSrpIHWIjA&oe=63AA2ADF",
  instagram: "https://www.instagram.com/exhibitabrewing/",
  twitter: "https://twitter.com/exhibitabrewing",
  facebook: "https://www.facebook.com/democracybrewing1/",
  official_webpage: "https://www.exhibit-a-brewing.com/",
  user: user_4
)

taproom_6 = Taproom.create(
  name: "TRILLIUM BREWING",
  address: "50 Thompson Place",
  city: "BOSTON",
  state: "MA",
  zipcode: "02210",
  monday_hours: "12PM - 10PM",
  tuesday_hours: "12PM - 10PM",
  wednesday_hours: "12PM - 10PM",
  thursday_hours: "12PM - 10PM",
  friday_hours: "12PM - 11PM",
  saturday_hours: "2PM - 11PM",
  sunday_hours: "12PM - 8PM",
  description: "Trillium opened in March of 2013, by JC and Esther Tetreault with the desire to create a lifestyle and experiences through the lens of a modern New England farmhouse-inspired brewery. Launched with three employees and the support of family, friends, and community, our little brewery located on Congress Street in Boston’s Fort Point neighborhood has grown to a team of more than 300. Every member of our organization has incredible drive and purpose, working passionately each day to elevate the quality of the Trillium experience.",
  dogs: "Humans only",
  kitchen: "In-house menu",
  patio: "Seasonally",
  logo: "https://scontent-bos5-1.xx.fbcdn.net/v/t1.18169-9/167000_177211038984737_752669_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_ohc=5iyqHy-VdrEAX8RDEtS&_nc_oc=AQkYGw96PxBezvQCvEbBJfuu3g_AViCfXS8FegrdBcE5S_POzgjCh2oPjXkHkvRQP92efNrv9aIMpigT8z9gYCwm&_nc_ht=scontent-bos5-1.xx&oh=00_AfBDZ-YzX3fISPjBLecd9qjcTqoYwTJXaiKHOYUanTXkiQ&oe=63AB2571",
  image_url: "https://images.squarespace-cdn.com/content/v1/550ae683e4b0714e2a52392c/1628788080430-Q1MYCSSRE3W3PXQLJ9WV/Thompson-03.jpg",
  instagram: "https://www.instagram.com/trilliumbrewing/",
  twitter: "https://twitter.com/trilliumbrewing",
  facebook: "https://www.facebook.com/trilliumbrewing",
  official_webpage: "https://trilliumbrewing.com/",
  user: user_4
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

beer_3 = Beer.create(
  name: "Harpoon IPA",
  style: "IPA",
  abv: "6.0%",
  description: "New England\’s Original IPA | As enjoyable today as it was in \‘93, IPA is a regional favorite and a craft beer classic. Styled after an English IPA but brewed with distinctly American hops, it]\’s citrusy, refreshing, and perfectly balanced\– as perfect on a Cape Cod beach as it is in a VT ski lodge or Boston dive bar.",
  brewer: "Harpoon Brewery",
  image_url: "https://www.harpoonbrewery.com/wp-content/uploads/2020/06/IPA-12CAN.png",
  user: user_2,
  taproom: taproom_3
)

beer_4 = Beer.create(
  name: "A democracy brewing beer",
  style: "IPA",
  abv: "6.0%",
  description: "New England\’s Original IPA | As enjoyable today as it was in \‘93, IPA is a regional favorite and a craft beer classic. Styled after an English IPA but brewed with distinctly American hops, it]\’s citrusy, refreshing, and perfectly balanced\– as perfect on a Cape Cod beach as it is in a VT ski lodge or Boston dive bar.",
  brewer: "Democracy Brewing",
  image_url: "https://www.harpoonbrewery.com/wp-content/uploads/2020/06/IPA-12CAN.png",
  user: user_2,
  taproom: taproom_4
)

beer_5 = Beer.create(
  name: "The Cat's Meow",
  style: "IPA",
  abv: "6.5%",
  description: "Aromas of tangerines and ripe stone fruits greet the nose followed by flavors of grapefruit peel, fresh navel oranges and light malt sweetness. Smooth finish with a touch of grapefruit bitterness at the end.",
  brewer: "Exhibit A",
  image_url: "https://www.bostonwineexchange.com/images/sites/bostonwineexchange/labels/exhibit-a-the-cats-meow_1.jpg",
  user: user_2,
  taproom: taproom_5
)

beer_6 = Beer.create(
  name: "Really Big Bird",
  style: "Double IPA",
  abv: "9.0%",
  description: "Presenting a densely hazy deep straw yellow, Really Big Bird wastes no time in offering its bouquet of fruit-forward aromatics. Beginning on the citrus side of the spectrum, we're first greeted with pungent notes of pithy orange, candied grapefruit, and lemon cello. As the glass warms, a tropical character presents itself in the form of a pineapple and papaya smoothie. Earthy undertones, centered around a piney bitterness create a wonderful balance atop a creamy, full-bodied mouthfeel.",
  brewer: "Trillium  Brewing",
  image_url: "https://cdn.shopify.com/s/files/1/0606/6146/5304/products/ReallyBigBird2021Pour_e0823db7-1abf-48f3-a7c8-8c5e5d1e6e25_550x.jpg?v=1648240721",
  user: user_2,
  taproom: taproom_6
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