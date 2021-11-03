class Song
    @@count = 0
    @@genres = []
    @@artists = []

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_histogram = {}
        @@genres.each do |item|
            if genre_histogram.keys.include?(item)
                genre_histogram[item] += 1
            else
                genre_histogram[item] = 1
            end
        end
        genre_histogram
    end

    def self.artist_count
        artist_histogram = {}
        @@artists.each do |item|
            if artist_histogram.keys.include?(item)
                artist_histogram[item] += 1
            else
                artist_histogram[item] = 1
            end
        end
        artist_histogram
    end

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
    end


end