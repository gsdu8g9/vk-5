# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/audio/methods/restore'

RSpec.describe Vk::API::Audio::Methods::Restore do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :audio_id }
    it { is_expected.to include :owner_id }
  end
end
