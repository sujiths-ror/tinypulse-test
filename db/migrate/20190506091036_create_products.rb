class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.float :price, null: false

      t.timestamps
      t.index ["title"], name: "index_products_on_title"
    end
  end
end
