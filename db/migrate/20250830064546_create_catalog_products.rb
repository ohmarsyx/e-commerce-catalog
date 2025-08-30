class CreateCatalogProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :catalog_products do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
