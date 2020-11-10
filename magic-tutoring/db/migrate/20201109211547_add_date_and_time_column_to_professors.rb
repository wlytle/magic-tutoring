class AddDateAndTimeColumnToProfessors < ActiveRecord::Migration[6.0]
  def change
    remove_column :professors, :availability, :datetime
  end
end
