class AddComplatedDayToTasks < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :complated_day, :datetime
  end
end
