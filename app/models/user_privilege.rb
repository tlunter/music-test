class UserPrivilege < ActiveRecord::Base
  attr_accessible :user, :privilege
  belongs_to :user
  belongs_to :privilege

  validates :user_id, presence: true
  validates :privilege_id, presence: true
end
