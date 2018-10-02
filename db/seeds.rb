# Different Artists

taylor = Artist.create(
  name: "Taylor Swift",
  genre: "Pop",
  birth_place: "Reading, PA",
  birth_year: 1989,
  birth_name: "Taylor Alison Swift",
  hit_single: "Shake It Off",
  awards: "Country Album of The Year Award 2009",
  biggest_album: "Fearless",
  current_partner: "Joe Alwin",
  catch_phrase: "The old Taylor cant come to the phone right now. Why? Cause she's dead.",
  first_child: "N/A",
  famous_alias: "T-Swift",
  height: "5'10"
)

travis = Artist.create(
  name: "Travis Scott",
  genre: "Hip-Hop",
  birth_place: "Houston, TX",
  birth_year: 1992,
  birth_name: "Jacques Berman Webster II",
  hit_single: "Sicko Mode",
  awards: "BET Hip Hop Award",
  biggest_album: "ASTROWORLD",
  current_partner: "Kylie Jenner",
  catch_phrase: "It's Lit",
  first_child: "Stormi Webster",
  famous_alias: "La Flame",
  height: "5'10"
)

# Artist.create(
#   name: "",
#   genre: "",
#   birth_place: "",
#   birth_year:
#   birth_name: "",
#   hit_single: "",
#   awards: "",
#   biggest_album: "",
#   current_partner: "",
#   catch_phrase: "",
#   first_child: "",
#   famous_alias: "",
#   height: ""
# )

# Artist.create(
#   name: "",
#   genre: "",
#   birth_place: "",
#   birth_year: ,
#   birth_name: "",
#   hit_single: "",
#   awards: "",
#   biggest_album: "",
#   current_partner: "",
#   catch_phrase: "",
#   first_child: "",
#   famous_alias: "",
#   height: ""
# )

# Artist.create(
#   name: "",
#   genre: "",
#   birth_place: "",
#   birth_year: ,
#   birth_name: "",
#   hit_single: "",
#   awards: "",
#   biggest_album: "",
#   current_partner: "",
#   catch_phrase: "",
#   first_child: "",
#   famous_alias: "",
#   height: ""
# )

# Artist.create(
#   name: "",
#   genre: "",
#   birth_place: "",
#   birth_year: ,
#   birth_name: "",
#   hit_single: "",
#   awards: "",
#   biggest_album: "",
#   current_partner: "",
#   catch_phrase: "",
#   first_child: "",
#   famous_alias: "",
#   height: ""
# )

# Different Questions

# Taylor Swift Q's
tayq1 = Question.create(
  content: "What is Taylor Swift's birth year?",
  choice_a: "1998",
  choice_b: "1988",
  choice_c: "1989",
  answer: "1989",
  artist_id: 1
)

tayq2 = Question.create(
  content: "What is Taylor Swift's top hit single?",
  choice_a: "You Belong With Me",
  choice_b: "Shake It Off",
  choice_c: "Bad Blood",
  answer: "Shake It Off",
  artist_id: 1
)

tayq3 = Question.create(
  content: "Who is Taylor Swift's current partner?",
  choice_a: "Joe Alwin",
  choice_b: "Calvin Harris",
  choice_c: "Tom Hiddleston",
  answer: "Joe Alwin",
  artist_id: 1
)

tayq4 = Question.create(
  content: "What is Taylor Swift's Biggest Album?",
  choice_a: "Fearless",
  choice_b: "Reputation",
  choice_c: "1989",
  answer: "Fearless",
  artist_id: 1
)

tayq5 = Question.create(
  content: "Where was Taylor Swift born?",
  choice_a: "Reading, PA",
  choice_b: "New York, NY",
  choice_c: "Nashville, TN",
  answer: "Reading, PA",
  artist_id: 1
)

# Travis Scott Q's
travq1 = Question.create(
  content: "Where was Travis Scott born?",
  choice_a: "Los Angeles, CA",
  choice_b: "Houston, TX",
  choice_c: "Canton, OH",
  answer: "Houston, TX",
  artist_id: 2
)

travq2 = Question.create(
  content: "What is Travis Scott's famous alias?",
  choice_a: "La Flame",
  choice_b: "Cactus Jack",
  choice_c: "Huncho",
  answer: "La Flame",
  artist_id: 2
)

travq3 = Question.create(
  content: "Who is Travis Scott's current partner?",
  choice_a: "Rihaanna",
  choice_b: "Kylie Jenner",
  choice_c: "Blac Chyna",
  answer: "Kylie Jenner",
  artist_id: 2
)

travq4 = Question.create(
  content: "How Tall is Travis Scott?",
  choice_a: "6'2",
  choice_b: "5'9",
  choice_c: "5'10",
  answer: "5'10",
  artist_id: 2
)

travq5 = Question.create(
  content: "What is Travis Scott's famous catch phrase?",
  choice_a: "Straight Up",
  choice_b: "It's Litt",
  choice_c: "Yugh",
  answer: "It's Lit",
  artist_id: 2
)

# g1 = Game.create()
