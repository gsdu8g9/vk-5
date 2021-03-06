# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/video_tag'

RSpec.describe Vk::API::Video::VideoTag do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :id }
    it { is_expected.to include :placer_id }
    it { is_expected.to include :tagged_name }
    it { is_expected.to include :date }
    it { is_expected.to include :viewed }
  end
end
