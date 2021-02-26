class Genre
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        return_array = []
        songs_object = songs
        songs_object.each do |song|
            return_array.push(song.artist)
        end
        return_array
    end

end
