require 'faker'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email
end

# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  Skill.create :name => skill, :context => 'technical'
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  Skill.create :name => skill, :context => 'creative'
end

# TODO: create associations between users and skills
user_1 = User.find_by_id(1)
user_2 = User.find_by_id(2)
# user_3 = User.find_by_id(3)

s_ruby = Skill.find_by_name('Ruby')
s_rails = Skill.find_by_name('Rails')
# s_css = Skill.find_by_name('CSS')
# s_photo = Skill.find_by_name('Photoshop')
# s_Ill = Skill.find_by_name('Illustrator')

user_1.skills << s_ruby
user_1.skills << s_rails

user_2.skills << s_ruby

user_3.skills << s_rails
