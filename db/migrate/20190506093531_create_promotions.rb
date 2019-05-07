class CreatePromotions < ActiveRecord::Migration[5.2]
  def change
    create_table :promotions do |t|
      t.text :title, null: false
      t.integer :promotion_type, null: false
      t.float :discount
      t.integer :discount_type
      t.integer :multiple_min_items
      t.integer :multiple_item_price

      t.references :product, foreign_key: true

      t.timestamps
      t.index ["title"], name: "index_promotions_on_title"
    end
  end
end
