class AddProductToProductGroup < ActiveRecord::Migration[8.0]
  def change
    add_reference :catalog_products, :product_group, null: false, foreign_key: { to_table: "catalog_product_groups" }
  end
end
