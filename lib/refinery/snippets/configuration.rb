module Refinery
  module Snippets
    include ActiveSupport::Configurable

    config_accessor :enable_versioning

    self.enable_versioning = true
  end
end
