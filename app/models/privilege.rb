# == Schema Information
#
# Table name: privileges
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Privilege < ActiveRecord::Base
  attr_accessible :name, :description

  validates :name, presence: true, length: { minimum: 5, maximum: 50 }, uniqueness: true
  validates :description, presence: true, length: { minimum: 20, maximum: 100 }
end
