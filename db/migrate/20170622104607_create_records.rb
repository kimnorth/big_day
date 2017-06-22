class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.datetime :date
      t.integer :today_total
      t.integer :today_consumed
      t.integer :today_exercise
      t.references :user

      t.timestamps
    end
  end
end
