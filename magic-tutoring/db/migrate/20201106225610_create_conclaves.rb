class CreateConclaves < ActiveRecord::Migration[6.0]
  def change
    create_table :conclaves do |t|
      t.string :feedback
      t.datetime :time
      t.string :location
      t.references :professor, null: false, foreign_key: true
      t.references :apprentice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
