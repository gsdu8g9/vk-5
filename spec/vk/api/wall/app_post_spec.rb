# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/app_post'

RSpec.describe Vk::API::Wall::AppPost do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :name }
    it { is_expected.to include :photo_130 }
    it { is_expected.to include :photo_604 }
  end
end
