class Skill < ActiveRecord::Base
  validates_uniqueness_of :name, :context

  has_many :ratings
  has_many :users, through: :ratings

  def user_with_proficiency(proficiency)
    user_id = self.ratings.find_by_proficiency(proficiency).user_id
    User.find_by_id(user_id)
  end

end
