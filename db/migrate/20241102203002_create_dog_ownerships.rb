class CreateDogOwnerships < ActiveRecord::Migration[7.2]
  def change
    create_table :dog_ownerships do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
