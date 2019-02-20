class CreateResidents < ActiveRecord::Migration[5.2]
  def change
    create_table :residents do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :address, null: false
      t.string :home_phone
      t.string :cell_phone

      t.timestamps
    end
  end
end
