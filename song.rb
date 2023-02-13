class Song
    @@all = []
  
    attr_accessor :name, :artist, :genre
  
    def initialize(name, artist = nil, genre = nil)
      @name = name
      @artist = artist
      @genre = genre
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.print_all_song_names
      self.all.each do |song|
        puts song.name
      end
    end
  end
song = Song.new("Name of the Song", "Name of the Artist", "Genre of the Song")
puts song.name
puts song.artist
puts song.genre