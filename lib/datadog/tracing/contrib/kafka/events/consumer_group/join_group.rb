# typed: true

require 'datadog/tracing/contrib/kafka/ext'
require 'datadog/tracing/contrib/kafka/event'
require 'datadog/tracing/contrib/kafka/consumer_event'
require 'datadog/tracing/contrib/kafka/consumer_group_event'

module Datadog
  module Tracing
    module Contrib
      module Kafka
        module Events
          module ConsumerGroup
            # Defines instrumentation for join_group.consumer.kafka event
            module JoinGroup
              include Kafka::Event
              extend Kafka::ConsumerEvent
              extend Kafka::ConsumerGroupEvent

              EVENT_NAME = 'join_group.consumer.kafka'.freeze

              module_function

              def span_name
                Ext::SPAN_CONSUMER_JOIN_GROUP
              end

              def span_options
                super.merge({ tags: { Tracing::Metadata::Ext::TAG_OPERATION => Ext::TAG_OPERATION_CONSUMER_JOIN_GROUP } })
              end
            end
          end
        end
      end
    end
  end
end
