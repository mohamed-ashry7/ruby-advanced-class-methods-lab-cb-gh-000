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
    song.save
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name=song_name
    song
  end

  def self.create_by_name(sone_name)
    song = self.create
    song.name = sone_name
    song
  end

  def self.find_by_name(name)
    self.all.find do |song|
      song.name==name
    end
  end
  def self.find_or_create_by_name(song_name)
      song = self.find_by_name(song_name)
      song ||=self.create_by_name(song_name)

  end

  def self.alphabetical
    Song.all.sort_by do |song|
      song.name
    end
  end

  def self.new_from_filename(format)
    arr = format.split(/[-.]/)
    song = self.create_by_name(arr[1].strip)
    song.artist_name = arr[0].strip
    song
  end

  def self.create_from_filename(filename)
    song = self.new_from_filename
  end
  def self.destroy_all
    self.all.clear
  end

end
