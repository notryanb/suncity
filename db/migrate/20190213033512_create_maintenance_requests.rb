class CreateMaintenanceRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenance_requests do |t|
      t.references :user, null: false
      t.references :resident, null: false
      t.references :address, null: false
      t.references :request_status, null: false
      t.references :request_category, null: false
      t.string :request_number
      t.text :message, null: false
      t.text :content, null: false
      t.datetime :completed_on

      t.timestamps
    end
  end
end
