class User < ActiveRecord::Base
  has_many :tweets

  validates :name, presence: true
  validates :username, presence: true 
end
