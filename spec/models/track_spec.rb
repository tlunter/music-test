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

require 'spec_helper'

describe Track do
  before do
    @track = Track.new(title: "Lazy Eye", artist: "Silversun Pickups",
                       album: "Carnavas")
  end

  subject { @track }

  it { should respond_to(:title) }
  it { should respond_to(:artist) }
  it { should respond_to(:albumartist) }
  it { should respond_to(:album) }
  it { should be_valid }

  describe "when title is not present" do
    before { @track.title = " " }
    it { should_not be_valid }
  end

  describe "when artist is not present" do
    before { @track.artist = " " }
    it { should_not be_valid }
  end

  describe "when album is not present" do
    before { @track.album = " " }
    it { should_not be_valid }
  end

  describe "when track is already present" do
    before do
      other_track = @track.dup
      other_track.save
    end

    it { should_not be_valid }
  end
end
