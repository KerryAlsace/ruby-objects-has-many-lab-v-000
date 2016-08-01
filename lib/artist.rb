class Artist
  attr_accessor :name, :genre

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
    @songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @@song_count += 1
    @songs << song
  end

  def self.song_count
    @@song_count
  end

  def songs
    @songs
  end

end