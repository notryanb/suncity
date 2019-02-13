class CreateResidentsAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :residents_addresses do |t|
      t.references :resident
      t.references :address
    end
  end
end
