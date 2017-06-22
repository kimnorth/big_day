class CreateUserGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :user_goals do |t|
      t.float :target
      t.float :current
      t.references :user

      t.timestamps
    end
  end
end
