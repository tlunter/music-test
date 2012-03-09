class QueueItem < ActiveRecord::Base
  attr_accessible :user, :track
  belongs_to :user
  belongs_to :track

  validates :user_id, presence: true
  validates :track_id, presence: true
end
