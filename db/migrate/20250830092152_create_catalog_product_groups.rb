class CreateCatalogProductGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :catalog_product_groups do |t|
      t.string :product_group_name

      t.timestamps
    end
  end
end
