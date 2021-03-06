# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/base/likes_info'

RSpec.describe Vk::API::Base::LikesInfo do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :count }
    it { is_expected.to include :user_likes }
    it { is_expected.to include :can_like }
    it { is_expected.to include :can_publish }
  end
end
