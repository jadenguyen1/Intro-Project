class CreateCats < ActiveRecord::Migration[7.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.integer :age

      t.timestamps
    end
  end
end
