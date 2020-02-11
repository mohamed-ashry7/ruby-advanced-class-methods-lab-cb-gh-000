class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end



  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    save
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name=song_name
    song
  end

  def self.create_by_name(sone_name)
    song = self.class.create
    song.name = sone_name
    song
  end

  def self.find_by_name(name)
    self.class.all.find do |song|
      song.name==name
    end
  end
  def self.find_or_create_by_name(song_name)
      song = self.class.find_by_name(song_name)
      song ||=self.class.create_by_name(song_name)
      
  end

  def self.alphabetical
  end
end
