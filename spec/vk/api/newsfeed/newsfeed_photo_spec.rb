# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/newsfeed_photo'

RSpec.describe Vk::API::Newsfeed::NewsfeedPhoto do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :likes }
    it { is_expected.to include :comments }
    it { is_expected.to include :can_comment }
    it { is_expected.to include :can_repost }
  end
end
