class CreateApprentices < ActiveRecord::Migration[6.0]
  def change
    create_table :apprentices do |t|
      t.string :name
      t.integer :year
      t.string :house
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
