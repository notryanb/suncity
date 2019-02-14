class CreateRequestStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :request_statuses do |t|
      t.string :status, null: false

      t.timestamps
    end
  end
end
