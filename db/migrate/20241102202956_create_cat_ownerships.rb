class CreateCatOwnerships < ActiveRecord::Migration[7.2]
  def change
    create_table :cat_ownerships do |t|
      t.references :cat, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
