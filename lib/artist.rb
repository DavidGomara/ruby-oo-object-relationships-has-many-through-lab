class Artist
    
    attr_reader :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end 
    
    def songs
        Song.all.select { |song| song.artist == self}
    end 
    
    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
        new_song
    end 
    
    def genres
        self.songs.collect{ |song| song.genre }.uniq
    end 
end 
