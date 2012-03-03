class Track < ActiveRecord::Base
  attr_accessible :title, :artist, :albumartist, :album

  validates :title, presence: true, uniqueness: { scope: [:artist, :album], case_sensitive: false }
  validates :artist, presence: true
  validates :album, presence: true
end
