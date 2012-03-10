FactoryGirl.define do
  factory :user do
    name "Todd Lunter"
    email "user@example.com"
    password "testing"
  end
  factory :track do
    title "Personal Trainer"
    artist "Day.din"
    albumartist "Day.din"
    album "A Place to be Real"
  end
  factory :privilege do
    name "Queue Tracks"
    description "Can add tracks to the queue to be listened to"
  end

end
