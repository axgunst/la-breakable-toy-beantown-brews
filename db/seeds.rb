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

lord_hobo = Brand.find_or_create_by(
  brand_name: "Lord Hobo",
  brand_logo: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/lord-hobo-log-gold.png",
  brand_image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/woburn-taproom/lord-hobo-woburn-taproom-inside.jpeg",
  brand_description: "Lord Hobo Brewing Company, founded in 2015, was born out of a Boston craft beer bar. Now into our seventh year of operation, we continue to grow, bringing innovative New England style beers to our thirsty and dedicated fans. We are a self-made company that believes our consumers deserve to be recognized and appreciated for who they are.",
  brand_official_webpage: "https://lordhobo.com/",
  brand_instagram: "https://www.instagram.com/lordhobobrewing/?hl=en",
  brand_twitter: "https://twitter.com/lordhobobrewing?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor",
  brand_facebook: "https://www.facebook.com/lordhobobrewing/",
  brand_tours: "We do not offer tours at the moment. However, our Woburn taproom is designed with an open-air architectural concept which allows you to view parts of the brewery through our garage door. Also, our team is always on hand to discuss our background and what we're currently up to. Just ask on your next visit!",
  user: user_admin
)

night_shift = Brand.find_or_create_by(
  brand_name: "Night Shift Brewing",
  brand_logo: "https://beantown-brews-production.s3.amazonaws.com/night-shift/night-shift-logo.jpeg",
  brand_image_url: "https://beantown-brews-production.s3.amazonaws.com/night-shift/everett-taproom/night-shift-everett-taproom-bar.jpeg",
  brand_description: "Night Shift Brewing began as an idea. In a small kitchen on Josephine Avenue in Somerville, MA, Rob Burns, Mike O'Mara, and Michael Oxton began homebrewing beer for friends and family. This hobby took place after work, going late into the evenings, becoming what they called their 'night shift.' It was 2007, and they hoped to share something more interesting and flavorful than the commercial options on shelves. What began as a nocturnal hobby in Somerville, MA has now grown beyond their wildest dreams. Join them in welcoming all styles of beverages, people, and ideas. We are here to celebrate great flavors and great friends. Welcome to the Night Shift.",
  brand_official_webpage: "https://nightshiftbrewing.com/",
  brand_instagram: "https://www.instagram.com/nightshiftbrewing/?hl=en",
  brand_twitter: "https://twitter.com/nightshiftbeer?lang=en",
  brand_facebook: "https://www.facebook.com/NightShiftBeer/",
  brand_tours: "We do not offer tours at this time, however our team is always on hand to discuss our background and what we're currently up to. Just ask on your next visit!",
  user: user_admin
)

downeast_cider = Brand.find_or_create_by(
  brand_name: "Downeast Cider",
  brand_logo: "https://beantown-brews-production.s3.amazonaws.com/downeast-cider/downeast-cider-logo.jpeg",
  brand_image_url: "https://beantown-brews-production.s3.amazonaws.com/downeast-cider/east-boston-taproom/down-east-east-boston-taproom-bar.jpeg",
  brand_description: "Massachusetts, 1991: It started with a dream, or rather...two dreams. Two young brothers, Ross and Matt Brockman, awoke at the exact moment. Both had experienced similar visions. “Unfiltered Craft Cider!”, they both exclaimed, in unison. They were four years old and seven years old, respectively. Twenty years later, the dream became reality. After years of twists and turns, Downeast was born in a dorm room at Bates College. Years of recipe tweaking on an old orchard in Maine led them to unfiltered Original Blend in 2011.",
  brand_official_webpage: "https://downeastcider.com/",
  brand_instagram: "https://www.instagram.com/downeastcider/?hl=en",
  brand_twitter: "https://twitter.com/downeastcider?lang=en",
  brand_facebook: "https://www.facebook.com/downeastcider/",
  brand_tours: "We're making so much cider, lemonade, and vodka soda, we've run out of space. With so many cans (and forklifts) in house it's both a little dangerous and a little boring to have a tour. Hopefully soon though. Stay tuned.",
  user: user_admin
)

mighty_squirrel_brewing_co = Brand.find_or_create_by(
  brand_name: "Mighty Squirrel",
  brand_logo: "https://beantown-brews-production.s3.amazonaws.com/mighty-squirrel-brewing-co/mighty-squirrel-brewing-co-logo-with-words.png",
  brand_image_url: "https://beantown-brews-production.s3.amazonaws.com/mighty-squirrel-brewing-co/waltham-taproom/mighty-squirrel-waltham-taproom-inside.png",
  brand_description: "Mighty Squirrel cofounders and brewers Naveen Pawar and Henry Manice launched their beers in 2015. Now, the 30-barrel brewhouse is producing the likes of established labels like Cloud Candy New England IPA, Strawberry Smoovy, and Mocha Stout. Since then Mighty Squirrel has been doing nothing but creating, brewing, and celebrating mighty moments!",
  brand_official_webpage: "https://www.mightysquirrel.com/home",
  brand_instagram: "https://www.instagram.com/mightysqrl/",
  brand_twitter: "https://twitter.com/mightysqrl",
  brand_facebook: "https://www.facebook.com/mightysqrl",
  brand_tours: "We do not offer tours at this time, however our Waltham taproom is designed with an open-air architectural concept which allows you to view parts of the brewery. Our team is always on hand to discuss our background and what we're currently up to. Just ask on your next visit!",
  user: user_admin
)

trillium_brewin = Brand.find_or_create_by(
  brand_name: "Trillium Brewing",
  brand_logo: "https://beantown-brews-production.s3.amazonaws.com/trillium-brewing/trillium-brewing-logo.jpeg",
  brand_image_url: "https://beantown-brews-production.s3.amazonaws.com/trillium-brewing/fort-point-taproom/trillium-fort-point-taproom-patio.jpeg",
  brand_description: "Trillium opened in March of 2013, by JC and Esther Tetreault with the desire to create a lifestyle and experiences through the lens of a modern New England farmhouse-inspired brewery. Artisanal beverages are central to everything we do. With hundreds of unique offerings available each year, we take pride in the diversity and breadth of beer, and seltzer that we produce.",
  brand_official_webpage: "https://trilliumbrewing.com/",
  brand_instagram: "https://www.instagram.com/trilliumbrewing/",
  brand_twitter: "https://twitter.com/trilliumbrewing",
  brand_facebook: "https://www.facebook.com/trilliumbrewing",
  brand_tours: "We do not offer tours at this time, however all of our taprooms are designed with an open-air architectural concept which allows you to view parts of the brewery. Our team is always on hand to discuss our background and what we're currently up to. Just ask on your next visit!",
  user: user_admin
)

sam_adams = Brand.find_or_create_by(
  brand_name: "Samuel Adams",
  brand_logo: "https://beantown-brews-production.s3.amazonaws.com/sam-adams/sam-adams-logo.jpeg",
  brand_image_url: "https://beantown-brews-production.s3.amazonaws.com/sam-adams/sam-adams-oak-barrels.jpeg",
  brand_description: "With his great-great grandfather Louis Koch’s beer recipe in hand, Jim brewed the very first batch of Samuel Adams Boston Lager in his kitchen. Samuel Adams combined pride, confidence, passion, and optimism in bringing Americans together to ignite the American Revolution. With a similar spirit, Jim Koch helped start the Craft beer revolution when he first brewed Boston Lager over 30 years ago - a revolution that is going strong to this day with close to 5,000 independent Craft brewers nationwide.",
  brand_official_webpage: "https://www.samueladams.com/",
  brand_instagram: "https://www.instagram.com/samueladamsbeer/",
  brand_twitter: "https://twitter.com/SamuelAdamsBeer?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor",
  brand_facebook: "https://www.facebook.com/SamuelAdams",
  brand_tours: "On our classic Boston Brewery tour (Jamaica Plain location only), you'll learn all about beer ingredients and the brewing process. You can taste the roasted malts and smell classic German Noble hops that give Boston Lager the distinct flavor and aroma that have made it an American original. All guests 21+ will receive a complimentary glass to keep and end the tour with a proper tasting of Samuel Adams beers!",
  brand_tour_tickets: "https://samadamsbostonbrewery.com/experiences",
  user: user_admin
)

harpoon = Brand.find_or_create_by(
  brand_name: "Harpoon",
  brand_logo: "https://beantown-brews-production.s3.amazonaws.com/harpoon/harpoon-logo.png",
  brand_image_url: "https://beantown-brews-production.s3.amazonaws.com/harpoon/boston-taproom/harpoon-boston-taproom-inside.jpeg",
  brand_description: "It all started with three college buddies and a shared love of beer. In 1986 the Harpoon Brewery received Brewing Permit #001 in the Commonwealth of Massachusetts. And that, friends, was the beginning of Harpoon…. Finally, in June of 1987 the “original” Harpoon Ale was brewed and delivered to Harpoon’s first accounts; the Sevens Ale House on Charles Street and Doyle's Café in Jamaica Plain. And the rest, as they say, is history. Sure, many things have changed since the early days of Harpoon, but much has stayed the same. We still love brewing beer and enjoying it with friends!",
  brand_instagram: "https://www.instagram.com/harpoonbrewery/",
  brand_twitter: "https://twitter.com/harpoonbrewery",
  brand_facebook: "https://www.facebook.com/TheHarpoonBrewery",
  brand_tours: "We offer daily 30-minute Guided Tastings for $5 per person which includes a walk through of our brewery over to our original tasting room where you will learn about our brands and sample our core offerings! You will be able to pre-purchase tour tickets online or in person first come, first served day-of only. Tours are 21+ unless accompanied by a parent or guardian,",
  brand_tour_tickets: "https://www.toasttab.com/harpoon-beer-hall-boston/v3",
  user: user_admin
)


