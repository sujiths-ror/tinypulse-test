class AddValidityToPromotions < ActiveRecord::Migration[5.2]
  def change
    add_column :promotions, :valid_from, :datetime
    add_column :promotions, :valid_to, :datetime
  end
end
