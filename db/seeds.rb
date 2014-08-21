Actor.create!([
  {full_name: "Chris Pine"},
  {full_name: "Zachary Quinto"},
  {full_name: "Simon Pegg"},
  {full_name: "Kermit the Frog"},
  {full_name: "Benedict Cumberbatch"},
  {full_name: "Jonny Lee Miller"},
  {full_name: "Lucy Liu"},
  {full_name: "Robin Williams"},
  {full_name: "Martin Freeman"},
  {full_name: "Martin Freeman"},
  {full_name: "Zoe Saldana"},
  {full_name: "Leonard Nimoy"}
])
ActorDvd.create!([
  {actor_id: 1, dvd_id: 1},
  {actor_id: 2, dvd_id: 1},
  {actor_id: 3, dvd_id: 1},
  {actor_id: 4, dvd_id: 2},
  {actor_id: 5, dvd_id: 3},
  {actor_id: 6, dvd_id: 4},
  {actor_id: 7, dvd_id: 5},
  {actor_id: 8, dvd_id: 5},
  {actor_id: 9, dvd_id: 6},
  {actor_id: 11, dvd_id: 4},
  {actor_id: 12, dvd_id: 1},
  {actor_id: 13, dvd_id: 1}
])
Author.create!([
  {full_name: "Sir Arthur Conan Doyle"},
  {full_name: "Agatha Christie"},
  {full_name: "F. Scott Fitzgerald"},
  {full_name: "Mitch Cullins"},
  {full_name: "J.R.R. Tolkien"},
  {full_name: "Way Spurr-Chen"},
  {full_name: "Bill Bryson"},
  {full_name: "F. Scott Fitzgerald"},
  {full_name: "Andy Schetter"},
  {full_name: "Uno"},
  {full_name: "Dos"},
  {full_name: "Uno "},
  {full_name: "Uno "},
  {full_name: "Dos "},
  {full_name: "4"},
  {full_name: "Uno  "},
  {full_name: "Dos  "},
  {full_name: "4 "},
  {full_name: "5"},
  {full_name: "Agatha Christie "}
])
AuthorBook.create!([
  {book_id: 1, author_id: 1},
  {book_id: 2, author_id: 2},
  {book_id: 12, author_id: 6},
  {book_id: 13, author_id: 5},
  {book_id: 16, author_id: 7},
  {book_id: 17, author_id: 8},
  {book_id: 18, author_id: 9},
  {book_id: 19, author_id: 10},
  {book_id: 23, author_id: 11},
  {book_id: 24, author_id: 12},
  {book_id: 24, author_id: 13},
  {book_id: 24, author_id: 15},
  {book_id: 24, author_id: 16},
  {book_id: 24, author_id: 17},
  {book_id: 24, author_id: 18},
  {book_id: 24, author_id: 19},
  {book_id: 24, author_id: 20},
  {book_id: 24, author_id: 21},
  {book_id: 2, author_id: 22}
])
Book.create!([
  {title: "The Adventures of Sherlock Holmes", category: "Mystery", comment: "I love Sherlock", on_loan: false, read: true, is_digital: false, is_owned: true, user_id: nil},
  {title: "The Murder of Roger Ackroyd", category: "Mystery", comment: "You won't believe the ending!", on_loan: false, read: false, is_digital: false, is_owned: true, user_id: nil},
  {title: "A Slight Trick of the Mind", category: "Drama", comment: "A beautiful and moving story of an elderly Sherlock Holmes", on_loan: false, read: true, is_digital: false, is_owned: false, user_id: nil},
  {title: "The Hobbit", category: "Fiction", comment: "Go Bilbo!", on_loan: false, read: true, is_digital: false, is_owned: true, user_id: nil},
  {title: "John's Dog", category: "Autobiography", comment: "best book EVER", on_loan: true, read: true, is_digital: true, is_owned: true, user_id: nil},
  {title: "A Short History of Nearly Everything", category: "Nonfiction", comment: "fascinating", on_loan: true, read: true, is_digital: true, is_owned: true, user_id: nil},
  {title: "The Great Gatsby", category: "Fiction", comment: "classic", on_loan: false, read: false, is_digital: false, is_owned: false, user_id: nil},
  {title: "How to Cook Popcorn", category: "Cooking", comment: "yummy in my tummy", on_loan: false, read: false, is_digital: false, is_owned: false, user_id: nil}
])
Cd.create!([
  {title: "It Might As Well Be Swing", category: "Jazz", comment: "Lots of energy", on_loan: false, listened: false, is_digital: false, is_owned: true, user_id: nil},
  {title: "Courage & Patience & Grit", category: "Celtic Rock", comment: "most excellent", on_loan: false, listened: false, is_digital: false, is_owned: false, user_id: nil},
  {title: "Nickel Creek", category: "Bluegrass", comment: "amazing musicianship", on_loan: true, listened: true, is_digital: false, is_owned: false, user_id: nil},
  {title: "The Very Best of Doc Severinsen", category: "Jazz", comment: "wow", on_loan: false, listened: true, is_digital: true, is_owned: false, user_id: nil},
  {title: "XXL", category: "Jazz", comment: "awesome", on_loan: true, listened: true, is_digital: true, is_owned: true, user_id: nil},
  {title: "Soul of the Tango", category: "Tango", comment: "beautiful", on_loan: true, listened: true, is_digital: false, is_owned: true, user_id: nil},
  {title: "Something Beautiful", category: "Celtic Rock", comment: "wooo", on_loan: true, listened: true, is_digital: true, is_owned: true, user_id: nil},
  {title: "Way's Rock Album", category: "Rock", comment: "Wwway way", on_loan: true, listened: true, is_digital: false, is_owned: true, user_id: nil},
  {title: "Mark's Music", category: "Jazz", comment: "awesome sauce", on_loan: true, listened: true, is_digital: false, is_owned: false, user_id: nil},
  {title: "Les Misérables", category: "Musical", comment: "can you hear the people sing", on_loan: false, listened: true, is_digital: true, is_owned: false, user_id: nil},
  {title: "I Wanna Know What Love Is", category: "80's", comment: "i want you to showww me", on_loan: true, listened: true, is_digital: false, is_owned: true, user_id: nil},
  {title: "The Popcorn Song", category: "Rap", comment: "we be at the club poppin' corn", on_loan: true, listened: true, is_digital: false, is_owned: false, user_id: nil},
  {title: "Never Let You Go (Angel Eyes)", category: "80's", comment: "let you goooooo", on_loan: true, listened: false, is_digital: false, is_owned: false, user_id: nil},
  {title: "Bubble", category: "Classical", comment: "bubble bubble", on_loan: true, listened: false, is_digital: false, is_owned: false, user_id: nil},
  {title: "Nando's Power Ballad", category: "Peruvian", comment: "yayyyyy", on_loan: true, listened: true, is_digital: true, is_owned: true, user_id: nil},
  {title: "Ella & Louis", category: "Jazz", comment: "the best", on_loan: false, listened: false, is_digital: false, is_owned: false, user_id: nil},
  {title: "Battle of the Bands", category: "Rock", comment: "wooo", on_loan: false, listened: false, is_digital: false, is_owned: false, user_id: nil},
  {title: "Kind of Blue", category: "Jazz", comment: "classic", on_loan: true, listened: false, is_digital: true, is_owned: true, user_id: nil}
])
CdEnsemble.create!([
  {cd_id: 1, ensemble_id: 1},
  {cd_id: 2, ensemble_id: 2},
  {cd_id: 3, ensemble_id: 3},
  {cd_id: 4, ensemble_id: 4},
  {cd_id: 6, ensemble_id: 5},
  {cd_id: 13, ensemble_id: 6},
  {cd_id: 15, ensemble_id: 7},
  {cd_id: 16, ensemble_id: 8},
  {cd_id: 18, ensemble_id: 9},
  {cd_id: 19, ensemble_id: 10},
  {cd_id: 20, ensemble_id: 11},
  {cd_id: 21, ensemble_id: 12},
  {cd_id: 22, ensemble_id: 13},
  {cd_id: 23, ensemble_id: 14},
  {cd_id: 27, ensemble_id: 15},
  {cd_id: 29, ensemble_id: 16},
  {cd_id: 41, ensemble_id: 17},
  {cd_id: 41, ensemble_id: 18},
  {cd_id: 42, ensemble_id: 19},
  {cd_id: 42, ensemble_id: 20},
  {cd_id: 43, ensemble_id: 21},
  {cd_id: 44, ensemble_id: 22},
  {cd_id: 45, ensemble_id: 23},
  {cd_id: 42, ensemble_id: 24},
  {cd_id: 42, ensemble_id: 25},
  {cd_id: 42, ensemble_id: 26},
  {cd_id: 46, ensemble_id: 27},
  {cd_id: 46, ensemble_id: 28},
  {cd_id: 46, ensemble_id: 29}
])
CdMusician.create!([
  {cd_id: 1, musician_id: 1},
  {cd_id: 1, musician_id: 2},
  {cd_id: 3, musician_id: 4},
  {cd_id: 4, musician_id: 5},
  {cd_id: 7, musician_id: 7},
  {cd_id: 8, musician_id: 8},
  {cd_id: 10, musician_id: 9},
  {cd_id: 14, musician_id: 10},
  {cd_id: 17, musician_id: 11},
  {cd_id: 21, musician_id: 12},
  {cd_id: 22, musician_id: 13},
  {cd_id: 23, musician_id: 14},
  {cd_id: 24, musician_id: 15},
  {cd_id: 25, musician_id: 16},
  {cd_id: 26, musician_id: 17},
  {cd_id: 28, musician_id: 18},
  {cd_id: 30, musician_id: 19},
  {cd_id: 31, musician_id: 20},
  {cd_id: 38, musician_id: 21},
  {cd_id: 38, musician_id: 22},
  {cd_id: 39, musician_id: 24},
  {cd_id: 40, musician_id: 25},
  {cd_id: 41, musician_id: 26},
  {cd_id: 42, musician_id: 27},
  {cd_id: 42, musician_id: 28},
  {cd_id: 43, musician_id: 29},
  {cd_id: 44, musician_id: 30},
  {cd_id: 45, musician_id: 31},
  {cd_id: 45, musician_id: 32},
  {cd_id: 45, musician_id: 33},
  {cd_id: 42, musician_id: 34},
  {cd_id: 42, musician_id: 35},
  {cd_id: 42, musician_id: 36},
  {cd_id: 42, musician_id: 37},
  {cd_id: 42, musician_id: 38},
  {cd_id: 42, musician_id: 39},
  {cd_id: 42, musician_id: 40},
  {cd_id: 42, musician_id: 41},
  {cd_id: 42, musician_id: 42},
  {cd_id: 42, musician_id: 43},
  {cd_id: 42, musician_id: 44},
  {cd_id: 42, musician_id: 45},
  {cd_id: 42, musician_id: 46},
  {cd_id: 42, musician_id: 47},
  {cd_id: 42, musician_id: 48},
  {cd_id: 42, musician_id: 49},
  {cd_id: 1, musician_id: 50},
  {cd_id: 42, musician_id: 51},
  {cd_id: 46, musician_id: 52},
  {cd_id: 46, musician_id: 53},
  {cd_id: 46, musician_id: 54}
])
Dvd.create!([
  {title: "Star Trek (2009)", category: "SciFi", comment: "A fun reboot", on_loan: false, viewed: false, is_digital: true, is_owned: true, user_id: nil},
  {title: "Muppets Take Manhattan", category: "Family", comment: "Classic!", on_loan: true, viewed: true, is_digital: true, is_owned: true, user_id: nil},
  {title: "Sherlock", category: "Drama", comment: "the game is afoot", on_loan: true, viewed: false, is_digital: true, is_owned: true, user_id: nil},
  {title: "Elementary", category: "Drama", comment: "the game is afoot in NYC", on_loan: false, viewed: false, is_digital: false, is_owned: false, user_id: nil},
  {title: "Hook", category: "Family", comment: "fun", on_loan: false, viewed: false, is_digital: false, is_owned: false, user_id: nil}
])
Ensemble.create!([
  {name: "Count Basie and His Orchestra"},
  {name: "Great Big Sea"},
  {name: "Way"},
  {name: "Way"},
  {name: "Nickel Creek"},
  {name: "Great Big Sea"},
  {name: "Big Phat Band"},
  {name: "Big Phat Band"},
  {name: "Great Big Sea"},
  {name: "Great Big Sea"},
  {name: "Great Big Sea"},
  {name: "Great Big Sea"},
  {name: "Great Big Sea"},
  {name: "Way Way"},
  {name: "Foreigner"},
  {name: "Steelheart"},
  {name: "Band Uno"},
  {name: "Band Segundo"},
  {name: "b1"},
  {name: "b2"},
  {name: "asdf"},
  {name: ""},
  {name: ""},
  {name: "b3"},
  {name: "b4"},
  {name: "d"},
  {name: "a"},
  {name: "b"},
  {name: "d"}
])
Musician.create!([
  {full_name: "Frank Sinatra"},
  {full_name: "Count Basie"},
  {full_name: "Yo-Yo Ma"},
  {full_name: "Doc Severinsen"},
  {full_name: "Rui Nakata"},
  {full_name: "Miles Davis"},
  {full_name: "Yo-Yo Ma"},
  {full_name: "Way Spurr-Chen"},
  {full_name: "Mark Jurek"},
  {full_name: "Mark Jurek"},
  {full_name: "Hugh Jackman"},
  {full_name: "Andy Schetter"},
  {full_name: "Alex Vance"},
  {full_name: "Fernando Catacora"},
  {full_name: "Ella Fitzgerald"},
  {full_name: "Louis Armstrong"},
  {full_name: "m1"},
  {full_name: "m2"},
  {full_name: "Miles Davis"},
  {full_name: "Bill Evans"},
  {full_name: "m3"},
  {full_name: "b1"},
  {full_name: "b2"},
  {full_name: "b3"},
  {full_name: "b4"},
  {full_name: "Count Basie and His Orchestra"},
  {full_name: "c"},
  {full_name: "a"},
  {full_name: "c"},
  {full_name: "b"}
])
VideoGame.create!([
  {title: "Mario Kart", console: "Wii", category: "Racing", comment: "I want red turtle shells IRL.", on_loan: false, played: true, is_digital: false, is_owned: true, user_id: nil},
  {title: "LEGO Lord of the Rings", console: "PS3", category: "Family", comment: "silly and funny!", on_loan: false, played: false, is_digital: true, is_owned: false, user_id: nil},
  {title: "Wii Sports", console: "Wii", category: "Family", comment: "no more sitting on the couch!", on_loan: true, played: true, is_digital: true, is_owned: true, user_id: nil}
])
