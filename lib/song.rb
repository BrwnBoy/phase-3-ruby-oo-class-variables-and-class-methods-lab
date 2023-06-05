class Song 
    attr_accessor :name, :artist, :genre 
    # class variables
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    def initialize(name, artist, genre)
        # instance variables
        @name = name 
        @artist = artist 
        @genre = genre 
        # class variables
        @@count += 1
        @@artists << @artist 
        @@genres << @genre
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
        @@genres.each do |genre|
            if  @@genre_count.has_key?(genre)
                @@genre_count[genre] = @@genres.count(genre)
            else 
                @@genre_count[genre] = @@genres.count(genre)
            end
               @@genre_count[genre] = @@genres.count(genre)
        end
        @@genre_count
    end

    def self.artist_count 
        @@artists.each do |artist|
            if  @@artist_count.has_key?(artist)
                @@artist_count[artist] = @@artists.count(artist)
            else 
                @@artist_count[artist] = @@artists.count(artist)
            end
        end
        @@artist_count
    end
end