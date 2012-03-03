class AddIndexToTracksArtistAlbumAndTitle < ActiveRecord::Migration
  def change
    add_index :tracks, [:title, :artist, :album], unique: true
  end
end
