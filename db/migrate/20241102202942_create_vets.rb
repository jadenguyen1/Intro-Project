class CreateVets < ActiveRecord::Migration[7.2]
  def change
    create_table :vets do |t|
      t.string :name
      t.string :clinic_address

      t.timestamps
    end
  end
end
