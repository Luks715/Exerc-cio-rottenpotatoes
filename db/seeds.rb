# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
  MovieGenre.find_or_create_by!(name: genre_name)
end

more_movies = [
  {:title => 'Aladdin ', :rating => 'G', :length => '90 min', :description => 'A magical adventure', :release_date => '25 - Nov -1992 '},

  {:title => 'When Harry Met Sally ', :rating => 'R', :length => '96 min', :description => 'Romantic comedy', :release_date => '21 - Jul -1989 '},

  {:title => 'The Help ', :rating => 'PG-13', :length => '146 min', :description => 'Drama', :release_date => '10 - Aug -2011 '},

  {:title => 'Raiders of the Lost Ark ', :rating => 'PG ', :length => '115 min', :description => 'Action-adventure', :release_date => '12 - Jun -1981 '},

  {:title => 'Lord of the Rings', :rating => 'PG-13', :length => '178 min', :description => 'Fantasy epic', :release_date => '12 - Jun -1981 '}
  ]

more_movies.each do |movie|
  Movie.create(movie)
end
