class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :user
      t.references :skill
      t.integer :proficiency, :default => 0
    end
  end
end
