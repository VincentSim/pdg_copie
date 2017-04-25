class AddDateToShift < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :end_date, :date
    add_column :shifts, :title, :string
  end
end
