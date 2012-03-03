class Privilege < ActiveRecord::Base
  attr_accessible :name, :description

  validates :name, presence: true, length: { minimum: 5, maximum: 50 }, uniqueness: true
  validates :description, presence: true, length: { minimum: 20, maximum: 100 }
end
