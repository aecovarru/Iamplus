class User < ApplicationRecord
  has_and_belongs_to_many :genres, uniq: true
  has_and_belongs_to_many :artists, uniq: true

  def create_artists(artists)
    artists.each do |artist|
      artist = Artist.find_or_create_by(name: artist.name)
      self.artists << artist unless self.artists.include?(artist)
    end
  end

  def create_genres(genres)
    genres.each do |genre|
      genre = Genre.find_or_create_by(name: genre)
      self.genres << genre unless self.genres.include?(genre)
    end
  end
  
end
