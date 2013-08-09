class Skill < ActiveRecord::Base
  validates_uniqueness_of :name, :context

  has_many :ratings
  has_many :users, through: :ratings
end
