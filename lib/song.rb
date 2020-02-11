class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end



  def save
    self.class.all << self
  end

  def create
    song = self.new
    save
    song
  end

  def new_by_name(song_name)
    song = self.new
    song.name=song_name
    song 
end
