class User < ActiveRecord::Base
  validates_uniqueness_of :name, :email

  has_many :ratings
  has_many :skills, through: :ratings
end
