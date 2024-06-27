require 'faker'

# Create genres
genres = Genre.create([
  { name: 'Science Fiction', description: 'Books about futuristic technology and alien encounters.' },
  { name: 'Fantasy', description: 'Books involving magic and mythical creatures.' },
  { name: 'Mystery', description: 'Books focused on solving crimes or mysterious events.' },
  { name: 'Romance', description: 'Books centered around romantic relationships and love stories.' },
  { name: 'Historical Fiction', description: 'Books set in a specific historical period, blending fictional characters and events with real historical contexts.' },
  { name: 'Thriller', description: 'Books characterized by suspenseful plots, often involving danger, excitement, and high stakes.' },
  { name: 'Horror', description: 'Books intended to evoke fear, featuring supernatural elements, monsters, or psychological horror.' },
  { name: 'Adventure', description: 'Books that involve thrilling journeys, expeditions, or quests, often set in exotic or dangerous locations.' },
  { name: 'Young Adult', description: 'Books aimed at a teenage audience, dealing with themes of identity, friendship, and coming-of-age.' },
  { name: 'Dystopian', description: 'Books set in a future society characterized by oppressive social control and often a bleak outlook.' }
])

# Create authors and their books
100.times do
  author = Author.create(
    name: Faker::Book.author,
    birth_date: Faker::Date.between(from: 80.years.ago, to: 20.years.ago),
    nationality: Faker::Address.country
  )

  2.times do
    Book.create(
      title: Faker::Book.title,
      description: Faker::Lorem.paragraph(sentence_count: 3),
      published_date: Faker::Date.between(from: 50.years.ago, to: Date.today),
      author: author,
      genre: genres.sample
    )
  end
end
