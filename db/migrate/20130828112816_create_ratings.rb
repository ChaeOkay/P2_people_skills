class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :proficiency, default: 0
      t.references :user
      t.references :skill
      t.timestamps
    end
  end
end
