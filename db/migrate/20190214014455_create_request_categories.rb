class CreateRequestCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :request_categories do |t|
      t.string :category, null: false

      t.timestamps
    end
  end
end
