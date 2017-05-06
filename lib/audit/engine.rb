# requires all dependencies
Gem.loaded_specs['audit'].dependencies.each do |d|
 require d.name
end

module Audit
  class Engine < ::Rails::Engine
    initializer :append_migrations do |app|
      unless app.root.to_s.match "#{root}/"
        config.paths['db/migrate'].expanded.each do |expanded_path|
          app.config.paths['db/migrate'] << expanded_path
        end
      end
    end
  end
end
