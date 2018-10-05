# Different Artists

# Bruno Mars (Pop)1

brunomars = Artist.create(
  name: "Bruno Mars",
  genre: "Pop",
  birth_place: "Honolulu, HI",
  birth_year: 1985,
  birth_name: "Peter Gene Hernandez",
  hit_single: "Uptown Funk!",
  awards: "Grammy Award for Album of the Year 2018",
  biggest_album: "Unorthodox Jukebox",
  current_partner: "Jessica Caban",
  catch_phrase: "N/A",
  first_child: "N/A",
  famous_alias: "Bruno",
  height: "5'5"
)

# Taylor Swift (Pop)2

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

# Rihanna (Pop)3

rihanna = Artist.create(
  name: "Rihanna",
  genre: "Pop",
  birth_place: "Saint Michael, Barbados",
  birth_year: 1988,
  birth_name: "Robyn Rihanna Fenty",
  hit_single: "We Found Love",
  awards: "BET Award for Best Female R&B/Pop Artist",
  biggest_album: "Unapologetic",
  current_partner: "currently single",
  catch_phrase: "Bitch better have my money!",
  first_child: "N/A",
  famous_alias: "Riri",
  height: "5'8"
)

# Travis Scott (Hip-Hop)4

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

# Beyoncé (R&B)5

beyonce = Artist.create(
  name: "Beyoncé",
  genre: "R&B",
  birth_place: "Houston, TX",
  birth_year: 1981,
  birth_name: "Beyoncé Giselle Knowles",
  hit_single: "Irreplaceable",
  awards: "BET Award for Best Female R&B/Pop Artist",
  biggest_album: "Lemonade",
  current_partner: "Jay-Z",
  catch_phrase: "I woke up like this",
  first_child: "Blue Ivy Carter",
  famous_alias: "Queen Bey",
  height: "5'7"
)

# Kendrick Lamar (Hip-Hop)6

kendrick = Artist.create(
  name: "Kendrick Lamar",
  genre: "Hip-Hop",
  birth_place: "Compton, CA",
  birth_year: 1987,
  birth_name: "Kendrick Lamar Duckworth",
  hit_single: "Humble",
  awards: "Grammy",
  biggest_album: "DAMN",
  current_partner: "Whitney Alford",
  catch_phrase: "N/A",
  first_child: "N/A",
  famous_alias: "K-Dot",
  height: "5'5"
)

# Drake (Hip-Hop)7

drake = Artist.create(
  name: "Drake",
  genre: "Hip-Hop",
  birth_place: "Toronto Canada",
  birth_year: 1986,
  birth_name: "Aubrey Drake Graham",
  hit_single: "One Dance",
  awards: "Grammy",
  biggest_album: "Take Care",
  current_partner: "Malaika Terry",
  catch_phrase: "Yeah",
  first_child: "N/A",
  famous_alias: "Drizzy",
  height: "6'0"
)

# Alicia Keys (R&B)8

aliciakeys = Artist.create(
  name: "Alicia Keys",
  genre: "R&B",
  birth_place: "New York, NY",
  birth_year: 1981,
  birth_name: "Alicia Augello Cook",
  hit_single: "No One",
  awards: "Grammy Award for Album of the Year 2015",
  biggest_album: "The Diary Of Alicia Keys",
  current_partner: "Swizz Beatz",
  catch_phrase: "N/A",
  first_child: "Egypt Daoud Dean",
  famous_alias: "Lellow",
  height: "5'6"
)

# Usher (R&B)9
usher = Artist.create(
  name: "Usher",
  genre: "R&B",
  birth_place: "Dallas, TX",
  birth_year: 1978,
  birth_name: "Usher Raymond IV",
  hit_single: "Yeah!",
  awards: "People Choice Awards for Favorite R&B Artist",
  biggest_album: "Confessions",
  current_partner: "Grace Miguel",
  catch_phrase: "N/A",
  first_child: "Usher Raymond V",
  famous_alias: "Big Ush",
  height: "5'7"
)

# Different Questions

# Taylor Swift Q's
tayq1 = Question.create(
  content: "What is Taylor Swift's birth year?",
  choice_a: "1998",
  choice_b: "1988",
  choice_c: "1989",
  answer: "1989",
  artist_id: 2
)

tayq2 = Question.create(
  content: "What is Taylor Swift's top hit single?",
  choice_a: "You Belong With Me",
  choice_b: "Shake It Off",
  choice_c: "Bad Blood",
  answer: "Shake It Off",
  artist_id: 2
)

tayq3 = Question.create(
  content: "Who is Taylor Swift's current partner?",
  choice_a: "Joe Alwin",
  choice_b: "Calvin Harris",
  choice_c: "Tom Hiddleston",
  answer: "Joe Alwin",
  artist_id: 2
)

tayq4 = Question.create(
  content: "What is Taylor Swift's Biggest Album?",
  choice_a: "Fearless",
  choice_b: "Reputation",
  choice_c: "1989",
  answer: "Fearless",
  artist_id: 2
)

tayq5 = Question.create(
  content: "Where was Taylor Swift born?",
  choice_a: "Reading, PA",
  choice_b: "New York, NY",
  choice_c: "Nashville, TN",
  answer: "Reading, PA",
  artist_id: 2
)

# Travis Scott Q's
travq1 = Question.create(
  content: "Where was Travis Scott born?",
  choice_a: "Los Angeles, CA",
  choice_b: "Houston, TX",
  choice_c: "Canton, OH",
  answer: "Houston, TX",
  artist_id: 4
)

travq2 = Question.create(
  content: "What is Travis Scott's famous alias?",
  choice_a: "La Flame",
  choice_b: "Cactus Jack",
  choice_c: "Huncho",
  answer: "La Flame",
  artist_id: 4
)

travq3 = Question.create(
  content: "Who is Travis Scott's current partner?",
  choice_a: "Rihanna",
  choice_b: "Kylie Jenner",
  choice_c: "Blac Chyna",
  answer: "Kylie Jenner",
  artist_id: 4
)

travq4 = Question.create(
  content: "How Tall is Travis Scott?",
  choice_a: "6'2",
  choice_b: "5'9",
  choice_c: "5'10",
  answer: "5'10",
  artist_id: 4
)

travq5 = Question.create(
  content: "What is Travis Scott's famous catch phrase?",
  choice_a: "Lets Get It",
  choice_b: "It's Litt",
  choice_c: "Yugh",
  answer: "It's Litt",
  artist_id: 4
)

# Kendrick Lamar
ken1 = Question.create(
  content: "Where was Kendrick Lamar born?",
  choice_a: "Compton, CA",
  choice_b: "Denver, CO",
  choice_c: "Chicago, IL",
  answer: "Compton, CA",
  artist_id: 6
)

ken2 = Question.create(
  content: "What year was Kendrick Lamar born?",
  choice_a: "1982",
  choice_b: "1979",
  choice_c: "1987",
  answer: "1987",
  artist_id: 6
)

ken3 = Question.create(
  content: "Who is Kendrick Lamar's current girlfriend?",
  choice_a: "Whitney Alford",
  choice_b: "Kayla Duckworth",
  choice_c: "Paula Oliver",
  answer: "Whitney Alford",
  artist_id: 6
)

ken4 = Question.create(
  content: "What is Kendrick Lamar's biggest album?",
  choice_a: "good kid, m.A.A.d city",
  choice_b: "untitled unmastered",
  choice_c: "DAMN",
  answer: "DAMN",
  artist_id: 6
)

ken5 = Question.create(
  content: "What is Kendrick Lamar's famous alias?",
  choice_a: "K-Rabbit",
  choice_b: "Kendrick",
  choice_c: "K-Dot",
  answer: "K-Dot",
  artist_id: 6
)

# Drake Questions
drake1 = Question.create(
  content: "How many Grammy's have Drake recieved?",
  choice_a: "1 Grammy",
  choice_b: "2 Grammy's",
  choice_c: "3 Grammy's",
  answer: "3 Grammy's",
  artist_id: 7
)

drake2 = Question.create(
  content: "What is Drake's top hit single?",
  choice_a: "God's Plan",
  choice_b: "Nice For What",
  choice_c: "One Dance",
  answer: "One Dance",
  artist_id: 7
)

drake3 = Question.create(
  content: "What year was Drake born?",
  choice_a: "1990",
  choice_b: "1986",
  choice_c: "1984",
  answer: "1986",
  artist_id: 7
)

drake4 = Question.create(
  content: "What is Drake's biggest album?",
  choice_a: "Take Care",
  choice_b: "Views",
  choice_c: "More Life",
  answer: "Take Care",
  artist_id: 7
)

drake5 = Question.create(
  content: "Where was Drake born?",
  choice_a: "New York, NY",
  choice_b: "Canada",
  choice_c: "London",
  answer: "Canada",
  artist_id: 7
)

# Rihanna questions
rihq1 = Question.create(
  content: "What is Rihanna's birth year?",
  choice_a: "1998",
  choice_b: "1988",
  choice_c: "1989",
  answer: "1988",
  artist_id: 3
)

rihq2 = Question.create(
  content: "What is Rihanna's top hit single?",
  choice_a: "We Found Love",
  choice_b: "Love the Way You Lie",
  choice_c: "Stay",
  answer: "We Found Love",
  artist_id: 3
)

rihq3 = Question.create(
  content: "Who is Rihanna's current partner?",
  choice_a: "Drake",
  choice_b: "Chris Brown",
  choice_c: "None of the above",
  answer: "None of the above",
  artist_id: 3
)

rihq4 = Question.create(
  content: "What is Rihanna's Biggest Album?",
  choice_a: "Good Girl Gone Bad: Reloaded",
  choice_b: "Unapologetic",
  choice_c: "Anti",
  answer: "Unapologetic",
  artist_id: 3
)

rihq5 = Question.create(
  content: "Where was Rihanna born?",
  choice_a: "Waikiki, HI",
  choice_b: "New York, NY",
  choice_c: "Saint Michael, Barbados",
  answer: "Saint Michael, Barbados",
  artist_id: 3
)

# Beyonce's questions

beyq1 = Question.create(
  content: "What is Beyoncé's birth year?",
  choice_a: "1981",
  choice_b: "1988",
  choice_c: "1989",
  answer: "1981",
  artist_id: 5
)

beyq2 = Question.create(
  content: "What is Beyoncé's top hit single?",
  choice_a: "Crazy In Love",
  choice_b: "Love On Top",
  choice_c: "Irreplaceable",
  answer: "Irreplaceable",
  artist_id: 5
)

beyq3 = Question.create(
  content: "Who is Beyoncé's current partner?",
  choice_a: "Kanye",
  choice_b: "Chris Brown",
  choice_c: "Jay-Z",
  answer: "Jay-Z",
  artist_id: 5
)

beyq4 = Question.create(
  content: "What is Beyoncé's Biggest Album?",
  choice_a: "I Am... Sasha Fierce",
  choice_b: "Lemonade",
  choice_c: "Dangerously in Love",
  answer: "Lemonade",
  artist_id: 5
)

beyq5 = Question.create(
  content: "Where was Beyoncé born?",
  choice_a: "Waikiki, HI",
  choice_b: "New York, NY",
  choice_c: "Houston, TX",
  answer: "Houston, TX",
  artist_id: 5
)

# Bruno Mars's questions

bruq1 = Question.create(
  content: "What is Bruno Mars's birth year?",
  choice_a: "1981",
  choice_b: "1988",
  choice_c: "1985",
  answer: "1985",
  artist_id: 1
)

bruq2 = Question.create(
  content: "What is Bruno Mars's top hit single?",
  choice_a: "24K Magic",
  choice_b: "Uptown Funk!",
  choice_c: "Nothin' On You",
  answer: "Uptown Funk!",
  artist_id: 1
)

bruq3 = Question.create(
  content: "Who is Bruno Mars's current partner?",
  choice_a: "Jessica Caban",
  choice_b: "Nicky Minaj",
  choice_c: "Rihanna",
  answer: "Jessica Caban",
  artist_id: 1
)

bruq4 = Question.create(
  content: "What is Bruno Mars's Biggest Album?",
  choice_a: "24K Magic",
  choice_b: "Unorthodox Jukebox",
  choice_c: "Earth to Mars",
  answer: "Unorthodox Jukebox",
  artist_id: 1
)

bruq5 = Question.create(
  content: "Where is Bruno Mars's birth name?",
  choice_a: "Bruno Hernandez",
  choice_b: "Gene Mars",
  choice_c: "Peter Hernandez",
  answer: "Peter Hernandez",
  artist_id: 1
)

# Alicia Keys's questions

aliq1 = Question.create(
  content: "What was Alicia Keys born",
  choice_a: "Houston, TX",
  choice_b: "Baltimore, MD",
  choice_c: "New York, NY",
  answer: "New York, NY",
  artist_id: 8
)

aliq2 = Question.create(
  content: "What is Alicia Keys's top hit single?",
  choice_a: "If I Ain't Got You",
  choice_b: "No One",
  choice_c: "Fallin'",
  answer: "No One",
  artist_id: 8
)

aliq3 = Question.create(
  content: "Who is Alicia Keys's partner?",
  choice_a: "Swizz Beatz",
  choice_b: "Drake",
  choice_c: "Jay-Z",
  answer: "Swizz Beatz",
  artist_id: 8
)

aliq4 = Question.create(
  content: "What is Alicia's Biggest Album?",
  choice_a: "Songs in A Minor",
  choice_b: "The Diary of Alicia Keys",
  choice_c: "Girl on Fire",
  answer: "The Diary of Alicia Keys",
  artist_id: 8
)

aliq5 = Question.create(
  content: "Where is Alicia Keys's birth name?",
  choice_a: "Alison Keys",
  choice_b: "Alicia Cook",
  choice_c: "Aleyah Keys",
  answer: "Alicia Cook",
  artist_id: 8
)

# Usher's questions

ushq1 = Question.create(
  content: "What was Usher born",
  choice_a: "Houston, TX",
  choice_b: "Baltimore, MD",
  choice_c: "Dallas, TX",
  answer: "Dallas, TX",
  artist_id: 9
)

ushq2 = Question.create(
  content: "What is Usher's top hit single?",
  choice_a: "DJ Got Us Fallin' in Love",
  choice_b: "Yeah!",
  choice_c: "Burn",
  answer: "Yeah!",
  artist_id: 9
)

ushq3 = Question.create(
  content: "Who is Usher's current partner?",
  choice_a: "Grace Miguel",
  choice_b: "Tameka Foster",
  choice_c: "Nicki Minaj",
  answer: "Grace Miguel",
  artist_id: 9
)

ushq4 = Question.create(
  content: "What is Usher's Biggest Album?",
  choice_a: "Looking 4 Myself",
  choice_b: "Confessions",
  choice_c: "My Way",
  answer: "Confessions",
  artist_id: 9
)

ushq5 = Question.create(
  content: "Where is Usher's birth name?",
  choice_a: "Usher Roberts IV",
  choice_b: "Usher Raymond IV",
  choice_c: "Raymond Usher IV",
  answer: "Usher Raymond IV",
  artist_id: 9
)
# g1 = Game.create()
