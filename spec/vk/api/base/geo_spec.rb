# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/base/geo'

RSpec.describe Vk::API::Base::Geo do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :coordinates }
    it { is_expected.to include :place }
    it { is_expected.to include :showmap }
  end
end
