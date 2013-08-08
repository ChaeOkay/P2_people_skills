class CreateUserSkills < ActiveRecord::Migration
  def change
    create_table :user_skills do |t|
      t.references :user_id
      t.references :skill_id
      t.integer :proficiency

      t.timestamps
    end
  end
end
