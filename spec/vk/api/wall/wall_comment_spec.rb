# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/wall_comment'

RSpec.describe Vk::API::Wall::WallComment do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :from_id }
    it { is_expected.to include :date }
    it { is_expected.to include :text }
    it { is_expected.to include :likes }
    it { is_expected.to include :reply_to_user }
    it { is_expected.to include :reply_to_comment }
    it { is_expected.to include :attachments }
    it { is_expected.to include :real_offset }
  end
end
