class CreateMaintenanceRequestNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenance_request_notes do |t|
      t.references :user, null: false
      t.references :maintenance_request, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
