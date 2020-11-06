class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :house
      t.references :subject, null: false, foreign_key: true
      t.datetime :availability
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
