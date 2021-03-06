# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/newsfeed_item'

RSpec.describe Vk::API::Newsfeed::NewsfeedItem do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :source_id }
    it { is_expected.to include :date }
  end
end
