class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.reference :users
      t.reference :skills
    end
  end
end
