module Catalog
  class Engine < ::Rails::Engine
    isolate_namespace Catalog
    initializer "catalog.assets" do |app|
      app.config.assets.path << root.join("app/javascript")
    end

    initializer "catalog.notifications" do |app|
      app.config.to_prepare do
        Engine.root.join("app/listeners").tap do |listeners|
          Dir.glob("#{listeners}/**/*_listener.rb").sort.each do |listener|
            p "Loading listener: #{listener}"
            load listener
          end
        end
      end
    end
  end
end
