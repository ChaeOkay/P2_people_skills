class User < ActiveRecord::Base
  validates_uniqueness_of :name, :email

  has_many :ratings
  has_many :skills, through: :ratings

  def proficiency_for(skill)
    Rating.find_by_user_id_and_skill_id(self.id, skill.id).proficiency
  end

  def set_proficiency_for(skill, proficiency)
    rating = Rating.find_by_user_id_and_skill_id(self.id, skill.id)
    rating.proficiency = proficiency
    rating.save
  end

end
