require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    #binding.pry
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    uni = @@genres
    unique_genres = uni.uniq
  end

  def self.artists
    uni = @@artists
    unique_artists = uni.uniq
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) { |hash, key| hash[key] += 1; hash}
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) { |hash, key| hash[key] += 1; hash}
  end
end
