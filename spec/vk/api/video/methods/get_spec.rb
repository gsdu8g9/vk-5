# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/get'

RSpec.describe Vk::API::Video::Methods::Get do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :videos }
    it { is_expected.to include :album_id }
    it { is_expected.to include :count }
    it { is_expected.to include :offset }
    it { is_expected.to include :extended }
  end
end
