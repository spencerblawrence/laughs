Event.create!(
  name: "Liquid Courage Comedy Club",
  venue: "Somerville Brewing Company Brewery + Taproom",
  address: "15 Ward St, Somerville, MA, 02143",
  start_date_time: "2019-02-17 20:00:00 -0500",
  end_date_time: "2019-02-17 23:00:00 -0500",
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
  start_date_time: "2019-02-17 21:00:00 -0500",
  end_date_time: "2019-02-17 23:59:00 -0500",
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
  start_date_time: "2019-02-19 20:00:00 -0500",
  end_date_time: "2019-02-19 21:30:00 -0500",
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
  start_date_time: "2019-02-16 21:00:00 -0500",
  end_date_time: "2019-02-16 23:00:00 -0500",
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
  start_date_time: "2019-02-16 20:00:00 -0500",
  end_date_time: "2019-02-16 21:30:00 -0500",
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
  [ "Patton", "Oswalt", "patton@gmail.com", "comedian", "password", "password", false,  "https://s3.amazonaws.com/laughs-development/comedians/patton_oswalt_500x281.jpg" ]
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
    profile_photo: profile_photo )
end

comedian_profiles = [
  [ 2,
    "Kevin",
    "Hart",
    "New York City, NY",
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

LineupSlot.create!(gig_id: 1, comedian_id: 2)
LineupSlot.create!(gig_id: 2, comedian_id: 2)
LineupSlot.create!(gig_id: 3, comedian_id: 2)
LineupSlot.create!(gig_id: 1, comedian_id: 3)
LineupSlot.create!(gig_id: 3, comedian_id: 3)
LineupSlot.create!(gig_id: 4, comedian_id: 3)
LineupSlot.create!(gig_id: 1, comedian_id: 4)
LineupSlot.create!(gig_id: 2, comedian_id: 4)
LineupSlot.create!(gig_id: 5, comedian_id: 4)
LineupSlot.create!(gig_id: 2, comedian_id: 5)
LineupSlot.create!(gig_id: 3, comedian_id: 5)
LineupSlot.create!(gig_id: 4, comedian_id: 5)
