# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/methods/post'

RSpec.describe Vk::API::Wall::Methods::Post do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :friends_only }
    it { is_expected.to include :from_group }
    it { is_expected.to include :message }
    it { is_expected.to include :attachments }
    it { is_expected.to include :services }
    it { is_expected.to include :signed }
    it { is_expected.to include :publish_date }
    it { is_expected.to include :lat }
    it { is_expected.to include :long }
    it { is_expected.to include :place_id }
    it { is_expected.to include :post_id }
    it { is_expected.to include :guid }
    it { is_expected.to include :mark_as_ads }
  end
end
