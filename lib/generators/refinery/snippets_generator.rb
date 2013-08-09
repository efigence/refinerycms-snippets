module Refinery
  class SnippetsGenerator < Rails::Generators::Base

    def generate_snippets_initializer
      template "config/initializers/refinery/snippets.rb.erb", File.join(destination_root, "config", "initializers", "refinery", "snippets.rb")
      template "config/initializers/globalize_papertrail_fix.rb", File.join(destination_root, "config", "initializers", "refinery", "globalize_papertrail_fix.rb")
    end
        
    def rake_db
      rake("refinery_snippets:install:migrations")
    end

    source_root File.expand_path('../templates', __FILE__)

    def append_load_seed_data
      append_file 'db/seeds.rb', :verbose => true do
        <<-EOH

# Added by RefineryCMS Snippets engine
Refinery::Snippets::Engine.load_seed
        EOH
      end
    end


  end
end
