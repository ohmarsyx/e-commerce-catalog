module Catalog
  class Product < ApplicationRecord
    belongs_to :product_group
  end
end
