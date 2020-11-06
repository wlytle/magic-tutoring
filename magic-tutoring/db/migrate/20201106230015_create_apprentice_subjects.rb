class CreateApprenticeSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :apprentice_subjects do |t|
      t.string :name
      t.references :apprentice, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
