# frozen_string_literal: true

# typed: true

module Datadog
  module Tracing
    module Metadata
      # Trace and span tags that represent meta information
      # regarding the trace. These fields are normally only used
      # internally, and can have special meaning to downstream
      # trace processing.
      # @public_api
      module Ext
        # Name of package that was instrumented
        TAG_COMPONENT = 'component'
        # Type of operation being performed (e.g. )
        TAG_OPERATION = 'operation'
        # Hostname of external service interacted with
        TAG_PEER_HOSTNAME = 'peer.hostname'
        # Name of external service that performed the work
        TAG_PEER_SERVICE = 'peer.service'

        TAG_KIND = 'span.kind'

        # Defines constants for trace analytics
        # @public_api
        module Analytics
          DEFAULT_SAMPLE_RATE = 1.0
          TAG_ENABLED = 'analytics.enabled'
          TAG_MEASURED = '_dd.measured'
          TAG_SAMPLE_RATE = '_dd1.sr.eausr'
        end

        module AppTypes
          TYPE_WEB = 'web'
          TYPE_DB = 'db'
          TYPE_CACHE = 'cache'
          TYPE_WORKER = 'worker'
          TYPE_CUSTOM = 'custom'
        end

        # @public_api
        # Tags related to distributed tracing
        module Distributed
          TAG_ORIGIN = '_dd.origin'
          TAG_SAMPLING_PRIORITY = '_sampling_priority_v1'
        end

        # @public_api
        module Errors
          STATUS = 1
          TAG_MSG = 'error.msg'
          TAG_STACK = 'error.stack'
          TAG_TYPE = 'error.type'
        end

        # @public_api
        module HTTP
          ERROR_RANGE = (500...600).freeze
          TAG_BASE_URL = 'http.base_url'
          TAG_METHOD = 'http.method'
          TAG_STATUS_CODE = 'http.status_code'
          TAG_URL = 'http.url'
          TYPE_INBOUND = AppTypes::TYPE_WEB.freeze
          TYPE_OUTBOUND = 'http'
          TYPE_PROXY = 'proxy'
          TYPE_TEMPLATE = 'template'

          # General header functionality
          module Headers
            module_function

            INVALID_TAG_CHARACTERS = %r{[^a-z0-9_\-:./]}.freeze

            # Normalizes an HTTP header string into a valid tag string.
            def to_tag(name)
              # Tag normalization based on: https://docs.datadoghq.com/getting_started/tagging/#defining-tags.
              #
              # Only the following characters are accepted.
              #  * Alphanumerics
              #  * Underscores
              #  * Minuses
              #  * Colons
              #  * Periods
              #  * Slashes
              #
              # All other characters are replaced with an underscore.
              tag = name.to_s.strip
              tag.downcase!
              tag.gsub!(INVALID_TAG_CHARACTERS, '_')

              # Additional HTTP header normalization.
              #
              # Periods are replaced with an underscore.
              tag.tr!('.', '_')
              tag
            end
          end

          # Request headers
          module RequestHeaders
            PREFIX = 'http.request.headers'

            module_function

            def to_tag(name)
              "#{PREFIX}.#{Headers.to_tag(name)}"
            end
          end

          # Response headers
          module ResponseHeaders
            PREFIX = 'http.response.headers'

            module_function

            def to_tag(name)
              "#{PREFIX}.#{Headers.to_tag(name)}"
            end
          end
        end

        # @public_api
        module NET
          TAG_HOSTNAME = '_dd.hostname'
          TAG_TARGET_HOST = 'out.host'
          TAG_TARGET_PORT = 'out.port'
          TAG_DESTINATION_NAME = 'network.destination.name'
          TAG_DESTINATION_PORT = 'network.destination.port'
        end

        # @public_api
        module Sampling
          TAG_AGENT_RATE = '_dd.agent_psr'

          # If rule sampling is applied to a span, set this metric the sample rate configured for that rule.
          # This should be done regardless of sampling outcome.
          TAG_RULE_SAMPLE_RATE = '_dd.rule_psr'

          # If rate limiting is checked on a span, set this metric the effective rate limiting rate applied.
          # This should be done regardless of rate limiting outcome.
          TAG_RATE_LIMITER_RATE = '_dd.limit_psr'

          TAG_SAMPLE_RATE = '_sample_rate'
        end

        # @public_api
        module SQL
          TYPE = 'sql'
          TAG_QUERY = 'sql.query'
        end

        # @public_api
        module DB
          TAG_INSTANCE = 'db.instance'
          TAG_USER = 'db.user'
          TAG_SYSTEM = 'db.system'
          TAG_STATEMENT = 'db.statement'
          TAG_ROW_COUNT = 'db.row_count'
        end

        # @public_api
        module SpanKind
          TAG_SERVER = 'server'
          TAG_CLIENT = 'client'
          TAG_PRODUCER = 'producer'
          TAG_CONSUMER = 'consumer'
          TAG_INTERNAL = 'internal'
        end
      end
    end
  end
end
