# typed: false

require 'spec_helper'

require 'datadog/core'

RSpec.describe Datadog do
  describe 'class' do
    subject(:datadog) { described_class }

    describe 'behavior' do
      describe '.configuration' do
        subject(:configuration) { datadog.configuration }

        it do
          expect(configuration).to be_an_instance_of(Datadog::Core::Configuration::Settings)
        end
      end

      describe '.configure' do
        let(:configuration) { datadog.configuration }

        it do
          expect { |b| datadog.configure(&b) }
            .to yield_with_args(kind_of(Datadog::Core::Configuration::Settings))
        end
      end

      describe '.configure_onto' do
        subject(:configure_onto) { datadog.configure_onto(object, **options) }

        let(:object) { Object.new }
        let(:options) { {} }

        it 'attaches a pin to the object' do
          expect(Datadog::Core::Pin)
            .to receive(:set_on)
            .with(object, **options)

          configure_onto
        end
      end

      describe '.configuration_for' do
        subject(:configuration_for) { described_class.configuration_for(object, option_name) }

        let(:object) { double('object') }
        let(:option_name) { :a_setting }

        context 'when the object has not been configured' do
          it { is_expected.to be nil }
        end

        context 'when the object has been configured' do
          let(:options) { {} }

          before { described_class.configure_onto(object, **options) }

          context 'but no option is provided' do
            let(:option_name) { nil }
            it { is_expected.to be_a_kind_of(Datadog::Core::Pin) }
          end

          context 'but an option is provided' do
            context 'and it has not been set' do
              it { is_expected.to be nil }
            end

            context 'and it has been set' do
              let(:option_value) { :a_value }
              let(:options) { { option_name => option_value } }

              it { is_expected.to be option_value }
            end
          end
        end
      end
    end
  end
end
