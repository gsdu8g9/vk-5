# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/cat_block'

RSpec.describe Vk::API::Video::CatBlock do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :items }
    it { is_expected.to include :next }
    it { is_expected.to include :name }
    it { is_expected.to include :id }
    it { is_expected.to include :view }
    it { is_expected.to include :can_hide }
    it { is_expected.to include :type }
  end
end
