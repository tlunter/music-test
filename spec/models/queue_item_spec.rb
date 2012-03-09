require 'spec_helper'

describe QueueItem do
  let (:track) { FactoryGirl.create(:track) }
  let (:user) { FactoryGirl.create(:user) }
  before do
    @queueitem = user.queue_items.new(track: track)
  end

  subject { @queueitem }

  it { should respond_to(:track) }
  it { should respond_to(:user) }

  describe "when user is missing" do
    before { @queueitem.user = nil }
    it { should_not be_valid }
  end

  describe "when track is missing" do
    before { @queueitem.track = nil }
    it { should_not be_valid }
  end

end
