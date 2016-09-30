# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/audio/methods/get_lyrics'

RSpec.describe Vk::API::Audio::Methods::GetLyrics do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :lyrics_id }
  end
end