require 'pry'

class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@count +=1
        @@artists << artist
        @@genres << genre
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        song_genres = {}
        @@genres.each do |genre|
            if song_genres[genre]
                # binding.pry
                song_genres[genre] += 1
            else
                song_genres[genre] = 1
                # binding.pry
            end
        end
        song_genres
        # binding.pry
    end

    def self.artist_count
        song_artists = {}
        @@artists.each do |artist|
            if song_artists[artist]
                song_artists[artist] += 1
            else
                song_artists[artist] = 1
            end
        end
        song_artists
    end

end

# binding.pry