class AddCreatedDayToTasks < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :created_day, :datetime
  end
end
