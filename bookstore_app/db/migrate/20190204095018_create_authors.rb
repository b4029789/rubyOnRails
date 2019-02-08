class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :fname
      t.string :lname
      t.text :bio

      t.timestamps
    end
  end
end
