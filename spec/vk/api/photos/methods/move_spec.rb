# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/move'

RSpec.describe Vk::API::Photos::Methods::Move do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :target_album_id }
    it { is_expected.to include :photo_id }
  end
end
