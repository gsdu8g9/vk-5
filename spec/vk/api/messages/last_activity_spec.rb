# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/last_activity'

RSpec.describe Vk::API::Messages::LastActivity do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :online }
    it { is_expected.to include :time }
  end
end
