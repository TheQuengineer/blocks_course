class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

class Playlist
  include Enumerable
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
    @songs.each { | song | yield song }
  end

  def play_songs
    @songs.each { |song | song.play }
  end

  def each_tagline
  @songs.each { |song| yield "#{song.name} - #{song.artist}" }
  end
end

playlist = Playlist.new("myshit")


song1 = Song.new("Have yourself a Merry Little Christmas", "Frank Sinatra", 145)
song2 = Song.new("All I want for Christmas is you", "Mariah Carrey", 235)
song3 = Song.new("Christmas Canon", "Trans Siberian Orchestra", 200)
song4 = Song.new("Frosty The snowman", "Loui Armstrong", 210)

playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)
playlist.add_song(song4)

short_songs = playlist.select { | song | song.duration < 200 }
short_songs.each do | song |
   song.name
end


