require 'pry'


class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    a_count =self.songs.each do |song|
      song.artist
    end
    a_count.count
  end

  def all_artist_names
    names = self.songs.map do |song|
      song.artist.name
  end
  names
end

end
