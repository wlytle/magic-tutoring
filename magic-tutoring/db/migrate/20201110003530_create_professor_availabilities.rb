class CreateProfessorAvailabilities < ActiveRecord::Migration[6.0]
  def change
    create_table :professor_availabilities do |t|
      t.references :professor, null: false, foreign_key: true
      t.datetime :date
      t.datetime :begin_time
      t.datetime :finish_time

      t.timestamps
    end
  end
end
