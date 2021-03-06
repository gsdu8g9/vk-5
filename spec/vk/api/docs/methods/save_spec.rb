# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/docs/methods/save'

RSpec.describe Vk::API::Docs::Methods::Save do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :file }
    it { is_expected.to include :title }
    it { is_expected.to include :tags }
  end
end
