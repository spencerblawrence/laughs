Event.create!(
  name: "Liquid Courage Comedy Club",
  venue: "Somerville Brewing Company Brewery + Taproom",
  address: "15 Ward St, Somerville, MA, 02143",
  start_date_time: "2019-02-24 20:00:00 -0500",
  end_date_time: "2019-02-24 23:00:00 -0500",
  cost: 5,
  website: "https://www.facebook.com/liquidcouragecomedy",
  description: "",
  recurring: true,
  image_url: "https://s3.amazonaws.com/laughs-development/events/liquid_courage.jpg",
  lat: 42.374940,
  lng: -71.089440
)

Event.create!(
  name: "Midway Or The Highway Comedy",
  venue: "Midway Cafe",
  address: "3496 Washington Street, Jamaica Plain, MA, 02130",
  start_date_time: "2019-02-24 21:00:00 -0500",
  end_date_time: "2019-02-24 23:59:00 -0500",
  cost: 0,
  website: "http://www.midwayorthehighway.com",
  description: "",
  recurring: true,
  image_url: "https://s3.amazonaws.com/laughs-development/events/midway_cafe.jpg",
  lat: 42.306240,
  lng: -71.107470
)

# Event.create!(
#   name: "McGreevy's FREE COMEDY: Every Monday & Tuesday",
#   venue: "McGreevy's Boston",
#   address: "911 Boylston St., Boston, MA, 02115",
#   start_date_time: "2019-02-18 20:00:00 -0500",
#   end_date_time: "2019-02-18 21:30:00 -0500",
#   cost: 0,
#   website: "",
#   description: "",
#   recurring: true,
#   image_url: "https://s3.amazonaws.com/laughs-development/events/mcgreevys.jpg",
#   lat: 42.348430,
#   lng: -71.084400
# )

Event.create!(
  name: "McGreevy's FREE COMEDY",
  venue: "McGreevy's Boston",
  address: "911 Boylston St., Boston, MA, 02115",
  start_date_time: "2019-02-26 20:00:00 -0500",
  end_date_time: "2019-02-26 21:30:00 -0500",
  cost: 0,
  website: "",
  description: "",
  recurring: true,
  image_url: "https://s3.amazonaws.com/laughs-development/events/mcgreevys.jpg",
  lat: 42.348430,
  lng: -71.084400
)

Event.create!(
  name: "The Mendoza Line Comedy Show",
  venue: "Dugout Cafe",
  address: "722 Commonwealth Avenue, Boston, MA, 02215",
  start_date_time: "2019-02-23 21:00:00 -0500",
  end_date_time: "2019-02-23 23:00:00 -0500",
  cost: 5,
  website: "https://www.eventbrite.com/e/the-mendoza-line-comedy-show-tickets-15228587114",
  description: "",
  recurring: true,
  image_url: "https://s3.amazonaws.com/laughs-development/events/mendoza_line.png",
  lat: 42.349590,
  lng: -71.105980
)

Event.create!(
  name: "Comedy at Bill's Bar (Free! Wednesday, 7:30PM)",
  venue: "Bill's Bar",
  address: "5 Lansdowne Street, Boston, MA, 02215",
  start_date_time: "2019-02-20 20:00:00 -0500",
  end_date_time: "2019-02-20 21:30:00 -0500",
  cost: 10,
  website: "https://billsbarcomedy.eventbrite.com/?aff=BillsBostonCalendar",
  description: "",
  recurring: true,
  image_url: "https://s3.amazonaws.com/laughs-development/events/bills_bar.jpg",
  lat: 42.347350,
  lng: -71.094950
)

# Event.create!(
#   name: "Comedy at Bill's Bar ($10 Friday, 8PM)",
#   venue: "Bill's Bar",
#   address: "5 Lansdowne Street, Boston, MA, 02215",
#   start_date_time: "2019-02-15 20:00:00 -0500",
#   end_date_time: "2019-02-15 21:30:00 -0500",
#   cost: 10,
#   website: "https://billsbarcomedy.eventbrite.com/?aff=BillsBostonCalendar",
#   description: "",
#   recurring: true,
#   image_url: "https://s3.amazonaws.com/laughs-development/events/bills_bar.jpg",
#   lat: 42.347350,
#   lng: -71.094950
# )

Event.create!(
  name: "Comedy at Bill's Bar ($10 Saturday, 8PM)",
  venue: "Bill's Bar",
  address: "5 Lansdowne Street, Boston, MA, 02215",
  start_date_time: "2019-02-23 20:00:00 -0500",
  end_date_time: "2019-02-23 21:30:00 -0500",
  cost: 10,
  website: "https://billsbarcomedy.eventbrite.com/?aff=BillsBostonCalendar",
  description: "",
  recurring: true,
  image_url: "https://s3.amazonaws.com/laughs-development/events/bills_bar.jpg",
  lat: 42.347350,
  lng: -71.094950
)

users = [
  [ "Spencer", "Lawrence", "spencer@gmail.com", "fan", "password", "password", true, "https://s3.amazonaws.com/laughs-development/user_profile_pics/cg_in_space_square.jpg" ],
  [ "Kevin", "Hart", "kevin@gmail.com", "comedian", "password", "password", false, "https://s3.amazonaws.com/laughs-development/comedians/kevin_hart_500x281.jpg" ],
  [ "Kumail", "Nanjiani", "kumail@gmail.com", "comedian", "password", "password", false,  "https://s3.amazonaws.com/laughs-development/comedians/kumail_nanjiani_500x281.jpg" ],
  [ "Mike", "Birbiglia", "mike@gmail.com", "comedian", "password", "password", false,  "https://s3.amazonaws.com/laughs-development/comedians/mike_birbiglia_500x281.jpg" ],
  [ "Patton", "Oswalt", "patton@gmail.com", "comedian", "password", "password", false,  "https://s3.amazonaws.com/laughs-development/comedians/patton_oswalt_500x281.jpg" ],
  [ "Jim", "Gaffigan", "jim@gmail.com", "comedian", "password", "password", false,  "https://s3.amazonaws.com/laughs-development/comedians/jim_gaffigan_500x281.jpg" ],
  [ "Hannibal", "Buress", "hannibal@gmail.com", "comedian", "password", "password", false,  "https://s3.amazonaws.com/laughs-development/comedians/hannibal_buress_500x281.jpg" ],
  [ "Dave", "Chappelle", "dave@gmail.com", "comedian", "password", "password", false,  "https://s3.amazonaws.com/laughs-development/comedians/dave_chappelle_500x281.jpg" ],
  [ "Aziz", "Ansari", "aziz@gmail.com", "comedian", "password", "password", false,  "https://s3.amazonaws.com/laughs-development/comedians/aziz_ansari_500x281.jpg" ]
]

users.each do |first_name, last_name, email, role, password, password_confirmation, admin_status, profile_photo|
  User.create(
    first_name: first_name,
    last_name: last_name,
    email: email,
    role: role,
    password: password,
    password_confirmation: password_confirmation,
    admin: admin_status,
    profile_photo: profile_photo
  )
end

comedian_profiles = [
  [ 2,
    "Kevin",
    "Hart",
    "NYC",
    "http://kevinhartnation.com/about/",
    "https://s3.amazonaws.com/laughs-development/comedians/kevin_hart_500x281.jpg",
    "Kevin Hart exploded onto the scene as one of the most versatile comedic actors in both television and film; and he’s making history."
  ],
  [ 3,
    "Kumail",
    "Nanjiani",
    "Los Angeles, CA",
    "https://en.wikipedia.org/wiki/Kumail_Nanjiani",
    "https://s3.amazonaws.com/laughs-development/comedians/kumail_nanjiani_500x281.jpg",
    "Kumail Nanjiani is a Pakistani-American stand-up comedian, actor, podcast host, and writer best known for being a main cast member on HBO's Emmy Award-nominated series Silicon Valley, as well as for providing the voice of Prismo on the Emmy Award-winning animated series Adventure Time. He starred on the TNT series Franklin & Bash and the Adult Swim series Newsreaders. Nanjiani also co-hosted the Comedy Central show The Meltdown with Jonah and Kumail."
  ],
  [ 4,
    "Mike",
    "Birbiglia",
    "Shrewsbury, MA",
    "http://birbigs.com/",
    "https://s3.amazonaws.com/laughs-development/comedians/mike_birbiglia_500x281.jpg",
    "Mike Birbiglia is an American comedian, actor, and filmmaker. He is a frequent contributor to This American Life and The Moth, and has released several comedy albums and television specials. His feature-length directorial debut Sleepwalk with Me (2012), based on his one-man show of the same name and in which he also starred, won awards at the Sundance and Nantucket film festivals. He also wrote, directed, and starred in the comedy-drama Don't Think Twice (2016). His 2010 book Sleepwalk with Me and Other Painfully True Stories was a New York Times bestseller and a finalist for the 2011 Thurber Prize for American Humor. Birbiglia has appeared in films such as Your Sister's Sister (2011), Cedar Rapids (2011), and Trainwreck (2015), played a recurring role in Orange Is the New Black, and has guest starred in episodes of Girls, Inside Amy Schumer, and Broad City."
  ],
  [ 5,
    "Patton",
    "Oswalt",
    "Los Angeles, CA",
    "http://www.pattonoswalt.com/",
    "https://s3.amazonaws.com/laughs-development/comedians/patton_oswalt_500x281.jpg",
    "Patton Oswalt is an American stand-up comedian, actor, voice actor and writer, known for playing Spencer Olchin in the sitcom The King of Queens (1998–2007), voicing Remy in the Pixar film Ratatouille (2007), co-starring with Charlize Theron in Young Adult (2011) and guest starring as the Koenigs on Agents of S.H.I.E.L.D. (2014–2017). He has appeared in six stand-up specials and won a Primetime Emmy Award for Outstanding Writing for a Variety Special and a Grammy for his Netflix special Patton Oswalt: Talking for Clapping (2016)."
  ],
  [ 6,
    "Jim",
    "Gaffigan",
    "NYC",
    "https://www.jimgaffigan.com/",
    "https://s3.amazonaws.com/laughs-development/comedians/jim_gaffigan_500x281.jpg",
    "James Christopher Gaffigan is an American stand-up comedian, actor, writer, and producer. He was raised in Chesterton, Indiana. His material is often about fatherhood, observations, laziness, and food. He is also regarded as a \"clean\" comic, using little profanity in his routines. He has had several successful comedy specials, including Mr. Universe, Obsessed, and Cinco, all three of which received Grammy nominations. His memoir, Dad Is Fat (2013) and his most recent book, Food: A Love Story (2014), are both published by Crown Publishers. He co-created and starred in a TV Land television series based on his life called The Jim Gaffigan Show."
  ],
  [ 7,
    "Hannibal",
    "Buress",
    "Chicago, IL",
    "https://hannibalburess.com/",
    "https://s3.amazonaws.com/laughs-development/comedians/hannibal_buress_500x281.jpg",
    "Hannibal Amir Buress is an American comedian, actor, writer, and producer. He started performing comedy in 2002 while attending Southern Illinois University. He has co-starred on Adult Swim's The Eric Andre Show since 2012 and has featured on Comedy Central's Broad City since 2014."
  ],
  [ 8,
    "Dave",
    "Chappelle",
    "Yellow Springs, OH",
    "https://en.wikipedia.org/wiki/Dave_Chappelle",
    "https://s3.amazonaws.com/laughs-development/comedians/dave_chappelle_500x281.jpg",
    "David Khari Webber Chappelle is is an American stand-up comedian, actor, writer, and producer. He is widely known for his sketch comedy television series, Chappelle's Show, which ran until his retirement from the show two years later. After leaving the show, Chappelle returned to performing stand-up comedy across the U.S. By 2006, Chappelle was called the \"comic genius of America\" by Esquire and, in 2013, \"the best\" by a Billboard writer. In 2017, Rolling Stone ranked him No. 9 in their \"50 Best Stand Up Comics of All Time.\""
  ],
  [ 9,
    "Aziz",
    "Ansari",
    "NYC",
    "https://www.azizansari.com/",
    "https://s3.amazonaws.com/laughs-development/comedians/aziz_ansari_500x281.jpg",
    "Aziz Ansari is an American actor, writer, producer, director, and comedian. As a stand-up comedian, Ansari released his debut comedy special, Intimate Moments for a Sensual Evening, in January 2010 on Comedy Central Records, and tours nationally between acting commitments. In 2010 and 2011, he performed his Dangerously Delicious tour, which was self-released for download on his website in March 2012 and debuted on Comedy Central in May 2012. He completed his third major tour, Buried Alive, in the summer of 2013. His fourth comedy special, Live at Madison Square Garden, was released on Netflix in 2015. His first book, Modern Romance: An Investigation, was released in June 2015. He was included in the Time 100 list of most influential people in 2016."
   ]
]

comedian_profiles.each do |user_id, first_name, last_name, city_state, website, photo1, description1|
  ComedianProfile.create(
    user_id: user_id,
    first_name: first_name,
    last_name: last_name,
    city_state: city_state,
    website: website,
    photo1: photo1,
    description1: description1
  )
end


# def random_gig_id
#   no_events = Event.count
#   random_gig_id = rand(1..no_events)
# end
#
# def random_comedian_id
#   no_comedians = ComedianProfile.count
#   random_comedian_id = rand(2..no_comedians)
# end
#
# 40.times do
#   LineupSlot.create!(gig_id: random_gig_id, comedian_id: random_comedian_id)
# end

# LineupSlot.create!(gig_id: 1, comedian_id: 2)
# LineupSlot.create!(gig_id: 2, comedian_id: 2)
# LineupSlot.create!(gig_id: 3, comedian_id: 2)
LineupSlot.create!(gig_id: 3, comedian_id: 3)
LineupSlot.create!(gig_id: 4, comedian_id: 3)
LineupSlot.create!(gig_id: 5, comedian_id: 3)
LineupSlot.create!(gig_id: 4, comedian_id: 4)
LineupSlot.create!(gig_id: 5, comedian_id: 4)
LineupSlot.create!(gig_id: 6, comedian_id: 4)
LineupSlot.create!(gig_id: 5, comedian_id: 5)
LineupSlot.create!(gig_id: 6, comedian_id: 5)
LineupSlot.create!(gig_id: 1, comedian_id: 5)
LineupSlot.create!(gig_id: 2, comedian_id: 6)
LineupSlot.create!(gig_id: 3, comedian_id: 6)
LineupSlot.create!(gig_id: 4, comedian_id: 6)
LineupSlot.create!(gig_id: 1, comedian_id: 7)
LineupSlot.create!(gig_id: 2, comedian_id: 7)
LineupSlot.create!(gig_id: 3, comedian_id: 7)
LineupSlot.create!(gig_id: 2, comedian_id: 8)
LineupSlot.create!(gig_id: 3, comedian_id: 8)
LineupSlot.create!(gig_id: 4, comedian_id: 8)
LineupSlot.create!(gig_id: 3, comedian_id: 9)
LineupSlot.create!(gig_id: 4, comedian_id: 9)
LineupSlot.create!(gig_id: 5, comedian_id: 9)
