# typed: false

require 'datadog/tracing/contrib/configuration/settings'
require 'datadog/tracing/contrib/action_pack/ext'

module Datadog
  module Tracing
    module Contrib
      module ActionPack
        module Configuration
          # Custom settings for the ActionPack integration
          # @public_api
          class Settings < Contrib::Configuration::Settings
            option :enabled do |o|
              o.default { env_to_bool(Ext::ENV_ENABLED, true) }
              o.lazy
            end

            option :analytics_enabled do |o|
              o.default { env_to_bool(Ext::ENV_ANALYTICS_ENABLED, nil) }
              o.lazy
            end

            option :analytics_sample_rate do |o|
              o.default { env_to_float(Ext::ENV_ANALYTICS_SAMPLE_RATE, 1.0) }
              o.lazy
            end

            option :exception_controller
            option :service_name
          end
        end
      end
    end
  end
end
