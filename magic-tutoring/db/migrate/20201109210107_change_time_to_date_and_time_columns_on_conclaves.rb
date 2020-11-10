class ChangeTimeToDateAndTimeColumnsOnConclaves < ActiveRecord::Migration[6.0]
  def change
    remove_column :conclaves, :time, :datetime
    add_column :conclaves, :date, :datetime
    add_column :conclaves, :begin_time, :datetime
    add_column :conclaves, :finish_time, :datetime
  end
end
