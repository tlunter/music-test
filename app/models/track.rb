# == Schema Information
#
# Table name: tracks
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  artist      :string(255)
#  albumartist :string(255)
#  album       :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Track < ActiveRecord::Base
  attr_accessible :title, :artist, :albumartist, :album
  has_many :queue_items

  validates :title, presence: true, uniqueness: { scope: [:artist, :album], case_sensitive: false }
  validates :artist, presence: true
  validates :album, presence: true
end
