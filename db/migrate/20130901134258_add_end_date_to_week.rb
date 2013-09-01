class AddEndDateToWeek < ActiveRecord::Migration
  def change
    add_column :weeks, :end_date, :date
  end
end
