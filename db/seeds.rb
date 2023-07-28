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
  name: "Lord Hobo",
  logo: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/lord-hobo-log-gold.png",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/lord-hobo/woburn-taproom/lord-hobo-woburn-taproom-inside.jpeg",
  description: "Lord Hobo Brewing Company, founded in 2015, was born out of a Boston craft beer bar. Now into our seventh year of operation, we continue to grow, bringing innovative New England style beers to our thirsty and dedicated fans. We are a self-made company that believes our consumers deserve to be recognized and appreciated for who they are.",
  official_webpage: "https://lordhobo.com/",
  instagram: "https://www.instagram.com/lordhobobrewing/?hl=en",
  twitter: "https://twitter.com/lordhobobrewing?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor",
  facebook: "https://www.facebook.com/lordhobobrewing/",
  tours: "We do not offer tours at the moment. However, our Woburn taproom is designed with an open-air architectural concept which allows you to view parts of the brewery through our garage door. Also, our team is always on hand to discuss our background and what we're currently up to. Just ask on your next visit!",
  user: user_admin
)

night_shift = Brand.find_or_create_by(
  name: "Night Shift Brewing",
  logo: "https://beantown-brews-production.s3.amazonaws.com/night-shift/night-shift-logo.jpeg",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/night-shift/everett-taproom/night-shift-everett-taproom-bar.jpeg",
  description: "Night Shift Brewing began as an idea. In a small kitchen on Josephine Avenue in Somerville, MA, Rob Burns, Mike O'Mara, and Michael Oxton began homebrewing beer for friends and family. This hobby took place after work, going late into the evenings, becoming what they called their 'night shift.' It was 2007, and they hoped to share something more interesting and flavorful than the commercial options on shelves. What began as a nocturnal hobby in Somerville, MA has now grown beyond their wildest dreams. Join them in welcoming all styles of beverages, people, and ideas. We are here to celebrate great flavors and great friends. Welcome to the Night Shift.",
  official_webpage: "https://nightshiftbrewing.com/",
  instagram: "https://www.instagram.com/nightshiftbrewing/?hl=en",
  twitter: "https://twitter.com/nightshiftbeer?lang=en",
  facebook: "https://www.facebook.com/NightShiftBeer/",
  tours: "We do not offer tours at this time, however our team is always on hand to discuss our background and what we're currently up to. Just ask on your next visit!",
  user: user_admin
)

downeast_cider = Brand.find_or_create_by(
  name: "Downeast Cider",
  logo: "https://beantown-brews-production.s3.amazonaws.com/downeast-cider/downeast-cider-logo.jpeg",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/downeast-cider/east-boston-taproom/down-east-east-boston-taproom-bar.jpeg",
  description: "Massachusetts, 1991: It started with a dream, or rather...two dreams. Two young brothers, Ross and Matt Brockman, awoke at the exact moment. Both had experienced similar visions. “Unfiltered Craft Cider!”, they both exclaimed, in unison. They were four years old and seven years old, respectively. Twenty years later, the dream became reality. After years of twists and turns, Downeast was born in a dorm room at Bates College. Years of recipe tweaking on an old orchard in Maine led them to unfiltered Original Blend in 2011.",
  official_webpage: "https://downeastcider.com/",
  instagram: "https://www.instagram.com/downeastcider/?hl=en",
  twitter: "https://twitter.com/downeastcider?lang=en",
  facebook: "https://www.facebook.com/downeastcider/",
  tours: "We're making so much cider, lemonade, and vodka soda, we've run out of space. With so many cans (and forklifts) in house it's both a little dangerous and a little boring to have a tour. Hopefully soon though. Stay tuned.",
  user: user_admin
)

mighty_squirrel_brewing_co = Brand.find_or_create_by(
  name: "Mighty Squirrel",
  logo: "https://beantown-brews-production.s3.amazonaws.com/mighty-squirrel-brewing-co/mighty-squirrel-brewing-co-logo-with-words.png",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/mighty-squirrel-brewing-co/waltham-taproom/mighty-squirrel-waltham-taproom-inside.png",
  description: "Mighty Squirrel cofounders and brewers Naveen Pawar and Henry Manice launched their beers in 2015. Now, the 30-barrel brewhouse is producing the likes of established labels like Cloud Candy New England IPA, Strawberry Smoovy, and Mocha Stout. Since then Mighty Squirrel has been doing nothing but creating, brewing, and celebrating mighty moments!",
  official_webpage: "https://www.mightysquirrel.com/home",
  instagram: "https://www.instagram.com/mightysqrl/",
  twitter: "https://twitter.com/mightysqrl",
  facebook: "https://www.facebook.com/mightysqrl",
  tours: "We do not offer tours at this time, however our Waltham taproom is designed with an open-air architectural concept which allows you to view parts of the brewery. Our team is always on hand to discuss our background and what we're currently up to. Just ask on your next visit!",
  user: user_admin
)

trillium_brewin = Brand.find_or_create_by(
  name: "Trillium Brewing",
  logo: "https://beantown-brews-production.s3.amazonaws.com/trillium-brewing/trillium-brewing-logo.jpeg",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/trillium-brewing/fort-point-taproom/trillium-fort-point-taproom-patio.jpeg",
  description: "Trillium opened in March of 2013, by JC and Esther Tetreault with the desire to create a lifestyle and experiences through the lens of a modern New England farmhouse-inspired brewery. Artisanal beverages are central to everything we do. With hundreds of unique offerings available each year, we take pride in the diversity and breadth of beer, and seltzer that we produce.",
  official_webpage: "https://trilliumbrewing.com/",
  instagram: "https://www.instagram.com/trilliumbrewing/",
  twitter: "https://twitter.com/trilliumbrewing",
  facebook: "https://www.facebook.com/trilliumbrewing",
  tours: "We do not offer tours at this time, however all of our taprooms are designed with an open-air architectural concept which allows you to view parts of the brewery. Our team is always on hand to discuss our background and what we're currently up to. Just ask on your next visit!",
  user: user_admin
)

sam_adams = Brand.find_or_create_by(
  name: "Samuel Adams",
  logo: "https://beantown-brews-production.s3.amazonaws.com/sam-adams/sam-adams-logo.jpeg",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/sam-adams/sam-adams-oak-barrels.jpeg",
  description: "With his great-great grandfather Louis Koch’s beer recipe in hand, Jim brewed the very first batch of Samuel Adams Boston Lager in his kitchen. Samuel Adams combined pride, confidence, passion, and optimism in bringing Americans together to ignite the American Revolution. With a similar spirit, Jim Koch helped start the Craft beer revolution when he first brewed Boston Lager over 30 years ago - a revolution that is going strong to this day with close to 5,000 independent Craft brewers nationwide.",
  official_webpage: "https://www.samueladams.com/",
  instagram: "https://www.instagram.com/samueladamsbeer/",
  twitter: "https://twitter.com/SamuelAdamsBeer?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor",
  facebook: "https://www.facebook.com/SamuelAdams",
  tours: "On our classic Boston Brewery tour (Jamaica Plain location only), you'll learn all about beer ingredients and the brewing process. You can taste the roasted malts and smell classic German Noble hops that give Boston Lager the distinct flavor and aroma that have made it an American original. All guests 21+ will receive a complimentary glass to keep and end the tour with a proper tasting of Samuel Adams beers!",
  tour_tickets: "https://samadamsbostonbrewery.com/experiences",
  user: user_admin
)

harpoon = Brand.find_or_create_by(
  name: "Harpoon",
  logo: "https://beantown-brews-production.s3.amazonaws.com/harpoon/harpoon-logo.png",
  image_url: "https://beantown-brews-production.s3.amazonaws.com/harpoon/boston-taproom/harpoon-boston-taproom-inside.jpeg",
  description: "It all started with three college buddies and a shared love of beer. In 1986 the Harpoon Brewery received Brewing Permit #001 in the Commonwealth of Massachusetts. And that, friends, was the beginning of Harpoon…. Finally, in June of 1987 the “original” Harpoon Ale was brewed and delivered to Harpoon’s first accounts; the Sevens Ale House on Charles Street and Doyle's Café in Jamaica Plain. And the rest, as they say, is history. Sure, many things have changed since the early days of Harpoon, but much has stayed the same. We still love brewing beer and enjoying it with friends!",
  official_webpage: "https://www.harpoonbrewery.com/",
  instagram: "https://www.instagram.com/harpoonbrewery/",
  twitter: "https://twitter.com/harpoonbrewery",
  facebook: "https://www.facebook.com/TheHarpoonBrewery",
  tours: "We offer daily 30-minute Guided Tastings for $5 per person which includes a walk through of our brewery over to our original tasting room where you will learn about our brands and sample our core offerings! You will be able to pre-purchase tour tickets online or in person first come, first served day-of only. Tours are 21+ unless accompanied by a parent or guardian,",
  tour_tickets: "https://www.toasttab.com/harpoon-beer-hall-boston/v3",
  user: user_admin
)


