User.destroy_all
Brand.destroy_all
Taproom.destroy_all
TaproomReview.destroy_all
Beer.destroy_all
BeerReview.destroy_all

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

beer_1 = Beer.find_or_create_by(
  name: "Boom Sauce",
  style: "IPA",
  abv: "7.8%",
  description: "Boomsauce is a big & bold IPA with a complex hop profile. With five different hops, it hits you with strong tropical fruit flavors before mellowing out to finish with a hint of earthiness. Each subsequent taste opens up the dynamic layers of complexity woven throughout this beer. Imagine fresh pressed fruit without the sweetness, perfect for that Saturday afternoon pick-me-up or a late-night gathering of friends.",
  brewer: "LORD HOBO",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/beers/lord-hobo-boom-sauce-can.jpeg",
  user: user_1,
  taproom: taproom_1
)

beer_2 = Beer.find_or_create_by(
  name: "617 Hazy IPA",
  style: "IPA",
  abv: "6.17%",
  description: "617 perfectly resembles the iconic winning spirit of Boston and all of New England through its carefully balanced flavors of greatness. The hops and grains beautifully blend together providing a perfect equilibrium between sweet and bitter. Together they form a bright berry flavor profile with a hint of honey in the finish. 617 is a homerun however you decide to drink it. #THATS617",
  brewer: "LORD HOBO",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/beers/lord-hobo-617-hazy-ipa-can-3.jpeg",
  user: user_1,
  taproom: taproom_1
)

beer_3 = Beer.find_or_create_by(
  name: "Juice Lord",
  style: "IPA",
  abv: "6.0%",
  description: "Pillowy oats and our house pilsner malt combine to provide a silky smooth canvas upon which we've painted a juicy and fruity master- piece. A sublime meeting of Citra and Huell Melon hops makes for a hazy IPA overflowing with the irresistible flavors of ripe melon and citrus fruits. Juice Lord is a beer made for the modern IPA drinker - smooth, yet sophisticated; daring, but familiar.",
  brewer: "LORD HOBO",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/beers/lord-hobo-juice-lord-can.jpeg",
  user: user_1,
  taproom: taproom_1
)

beer_4 = Beer.find_or_create_by(
  name: "Angelica",
  style: "IPA",
  abv: "5.5%",
  description: "Angelica is designed to be a one-of-a-kind hazy showcase for the magnificent Mosaic hop, bringing forth strong citrus flavors. What really stands out about this beer is the pillowy mouthfeel the wheat malt brings out. The color, haze, and taste are as if you're drinking a freshly squeezed glass of orange juice with a full mouthfeel. Angelica is clean, refreshing, and a true piece of art.",
  brewer: "LORD HOBO",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/beers/lord-hobo-angelica-hazy-ipa-can.jpeg",
  user: user_1,
  taproom: taproom_1
)

beer_5 = Beer.find_or_create_by(
  name: "Life",
  style: "IPA",
  abv: "4.5%",
  description: "This hop forward, easy-drinking IPA tickles your tongue in all the right ways. The Citra hops bring out a fresh zesty lemon without the puckering after effect, while the flaked oats in the malt bill provide a silky mouthfeel. Grab Life by the hands and don't let go.",
  brewer: "LORD HOBO",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/beers/lord-hobo-life-can.jpeg",
  user: user_1,
  taproom: taproom_1
)

beer_6 = Beer.find_or_create_by(
  name: "Free Bird",
  style: "Ale",
  abv: "5.0%",
  description: "The word crushable doesn't even begin to describe what Freebird has to offer. With a strong flavorful profile, it still maintains a clean finish to quench even the greatest thirst. With this refreshing Golden Ale, the hops take a backseat while the flavor brings forth a slightly sweet, bready malt background that always leaves you wanting more.",
  brewer: "LORD HOBO",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/beers/lord-hobo-free-bird-can-2.jpeg",
  user: user_1,
  taproom: taproom_1
)

beer_7 = Beer.find_or_create_by(
  name: "Glorious",
  style: "IPA",
  abv: "8.5%",
  description: "This beautifully smooth New England-Style Pale Ale pours a hazy, straw color. A double-dose of sought-after Galaxy hops delivers a silky peach-grape aroma, tropical fruit flavors, and an elegant mouth feel.",
  brewer: "LORD HOBO",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/beers/lord-hobo-glorious-new-england-ipa-can.jpeg",
  user: user_1,
  taproom: taproom_1
)

beer_8 = Beer.find_or_create_by(
  name: "617 Lager",
  style: "Lager",
  abv: "8.5%",
  description: "This golden Lager is as crisp as a winter morning in Boston and more refreshing than the T running on time. While 617 Lager is our most difficult beer to brew, it is hands down our easiest one to drink. Brewed with a single hop and a single malt, the beauty of those ingredients shine through and finish clean with every sip. #FIERCELYBOSTON",
  brewer: "LORD HOBO",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/beers/lord-hobo-617-lager-can-2.jpeg",
  user: user_1,
  taproom: taproom_1
)

beer_9 = Beer.find_or_create_by(
  name: "Nite Lite",
  style: "Lager",
  abv: "4.3%",
  description: "Low ABV and easy-sipping, Nite Lite is a truly delicious craft light lager that will pair all night with every party. The beer pours sunny gold with a soft, white head. Aromas of fresh bread on the nose. Sips crisp and refreshing, with hints of biscuit and citrus. Finishes clean and light, inviting another sip.",
  brewer: "Night Shift Brewing",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/night-shift/beers/night-shift-nite-lite-beer-can.jpeg",
  user: user_2,
  taproom: taproom_2
)

beer_10 = Beer.find_or_create_by(
  name: "Day Lite",
  style: "Lager",
  abv: "4.3%",
  description: "Day Lite is a crisp and crushable wheat lager with cara cara orange peel. It sips smooth and slightly hazy with a sweet orange finish. At 4% and 100 calories, we suggest pairings of patios, beaches, BBQs, and tailgates all season long.",
  brewer: "Night Shift Brewing",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/night-shift/beers/night-shift-day-lite-can.png",
  user: user_2,
  taproom: taproom_2
)

beer_11 = Beer.find_or_create_by(
  name: "Lime Lite",
  style: "Lager",
  abv: "4.3%",
  description: "Light and citrusy, Lime Lite is a truly delicious craft light lager with lime. It pairs best with sunny days on the beach, lawn, or patio. The beer pours sunny gold with a soft, white head. Citrus and light biscuit on the nose. Sips crisp and refreshing, with a burst of fresh lime zest. Finishes clean and light, inviting another sip.",
  brewer: "Night Shift Brewing",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/night-shift/beers/night-shift-lime-lite-can.jpeg",
  user: user_2,
  taproom: taproom_2
)

beer_12 = Beer.find_or_create_by(
  name: "Harpoon IPA",
  style: "IPA",
  abv: "6.0%",
  description: "New England's Original IPA | As enjoyable today as it was in '93, IPA is a regional favorite and a craft beer classic. Styled after an English IPA but brewed with distinctly American hops, it's citrusy, refreshing, and perfectly balanced - as perfect on a Cape Cod beach as it is in a VT ski lodge or Boston dive bar.",
  brewer: "Harpoon Brewery",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/harpoon/beers/harpoon-ipa-dog-2.png",
  user: user_2,
  taproom: taproom_3
)

beer_13 = Beer.find_or_create_by(
  name: "Roll the Dice",
  style: "IPA",
  abv: "6.2%",
  description: "New England IPA",
  brewer: "Democracy Brewing",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/democracy-brewing/beers/democracy-brewing-roll-the-dice-can.jpeg",
  user: user_2,
  taproom: taproom_4
)

beer_14 = Beer.find_or_create_by(
  name: "The Cat's Meow",
  style: "IPA",
  abv: "6.5%",
  description: "Aromas of tangerines and ripe stone fruits greet the nose followed by flavors of grapefruit peel, fresh navel oranges and light malt sweetness. Smooth finish with a touch of grapefruit bitterness at the end.",
  brewer: "Exhibit A",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/exhibit-a/beers/exhibit-a-the-cats-meow-can.jpeg",
  user: user_2,
  taproom: taproom_5
)

beer_15 = Beer.find_or_create_by(
  name: "Really Big Bird",
  style: "Double IPA",
  abv: "9.0%",
  description: "Presenting a densely hazy deep straw yellow, Really Big Bird wastes no time in offering its bouquet of fruit-forward aromatics. Beginning on the citrus side of the spectrum, we're first greeted with pungent notes of pithy orange, candied grapefruit, and lemon cello. As the glass warms, a tropical character presents itself in the form of a pineapple and papaya smoothie. Earthy undertones, centered around a piney bitterness create a wonderful balance atop a creamy, full-bodied mouthfeel.",
  brewer: "Trillium  Brewing",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/trillium-brewing/beers/trillium-brewing-really-big-bird-can.webp",
  user: user_2,
  taproom: taproom_6
)


