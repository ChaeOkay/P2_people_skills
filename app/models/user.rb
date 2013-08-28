class User < ActiveRecord::Base
  has_many :ratings
  has_many :skills, through: :ratings

  validates_presence_of :name, :email
  validates_uniqueness_of :name

  def proficiency_for(skill)
    retreive(skill).proficiency
  end

  def set_proficiency_for(skill, value)
    rating = retreive(skill)
    rating.update_attributes(proficiency: value)
  end

  def retreive(skill)
    Rating.find_by_skill_id_and_user_id(skill.id, self.id)
  end

end
