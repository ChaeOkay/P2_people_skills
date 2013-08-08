class UserSkill < ActiveRecord::Base
  belongs_to :users
  belongs_to :skills
end
