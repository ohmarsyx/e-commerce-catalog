module Catalog
  class Engine < ::Rails::Engine
    isolate_namespace Catalog
    # initializer "catalog.assets" do |app|
    #   app.config.assets.path << root.join("app/javascript")
    # end
  end
end
