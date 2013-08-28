require 'pry'
class Skill < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings

  validates_presence_of :name, :context
  validates_uniqueness_of :name

  def user_with_proficiency(value)
    users.where(ratings: {proficiency: value}).first
  end
end
