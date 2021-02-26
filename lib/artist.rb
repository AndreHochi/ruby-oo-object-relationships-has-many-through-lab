class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genres)
       Song.new(name, self, genres)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        return_array = []
        songs_object = songs
        songs_object.each do |song|
            return_array.push(song.genres)
        end
        return_array
    end

end
