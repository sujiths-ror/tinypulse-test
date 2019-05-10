class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.text :title, null: false
      t.integer :offer_type, null: false
      t.integer :discount_type
      t.float :discount
      t.float :spend_over_limit
      t.datetime :valid_from, null: false
      t.datetime :valid_to, null: false

      t.timestamps
      t.index ["title"], name: "index_offers_on_title"
    end
  end
end
