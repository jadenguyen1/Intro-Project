class CreateOwners < ActiveRecord::Migration[7.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :address
      t.references :vet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
