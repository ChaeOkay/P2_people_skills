class Rating < ActiveRecord::Base
  belongs_to :skills
  belongs_to :users
end
