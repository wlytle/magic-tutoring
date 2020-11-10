class ChangeTimeToDateAndTimeColumnsOnConclaves < ActiveRecord::Migration[6.0]
  def change
    remove_column :conclaves, :time, :datetime
    add_column :conclaves, :date, :datetime
    add_column :conclaves, :start_time, :datetime
    add_column :conclaves, :end_time, :datetime
  end
end
