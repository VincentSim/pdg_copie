class CreateShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :shifts do |t|
      t.integer :planning_id
      t.references :worker, foreign_key: true
      t.date :start_date

      t.timestamps
    end
  end
end
