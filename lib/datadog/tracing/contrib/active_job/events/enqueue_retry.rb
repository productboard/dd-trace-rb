# typed: false

require 'datadog/tracing/metadata/ext'
require 'datadog/tracing/contrib/analytics'
require 'datadog/tracing/contrib/active_job/ext'
require 'datadog/tracing/contrib/active_job/event'

module Datadog
  module Tracing
    module Contrib
      module ActiveJob
        module Events
          # Defines instrumentation for enqueue_retry.active_job event
          module EnqueueRetry
            include ActiveJob::Event

            EVENT_NAME = 'enqueue_retry.active_job'.freeze

            module_function

            def event_name
              self::EVENT_NAME
            end

            def span_name
              Ext::SPAN_ENQUEUE_RETRY
            end

            def process(span, event, _id, payload)
              span.name = span_name
              span.service = configuration[:service_name] if configuration[:service_name]
              span.resource = payload[:job].class.name
              span.set_tag(Tracing::Metadata::Ext::TAG_OPERATION, Ext::TAG_OPERATION_ENQUEUE_RETRY)

              # Set analytics sample rate
              if Contrib::Analytics.enabled?(configuration[:analytics_enabled])
                Contrib::Analytics.set_sample_rate(span, configuration[:analytics_sample_rate])
              end

              set_common_tags(span, payload)
              span.set_tag(Ext::TAG_JOB_ERROR, payload[:error])
              span.set_tag(Ext::TAG_JOB_RETRY_WAIT, payload[:wait])
            rescue StandardError => e
              Datadog.logger.debug(e.message)
            end
          end
        end
      end
    end
  end
end
