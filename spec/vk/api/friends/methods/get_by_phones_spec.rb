# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/methods/get_by_phones'

RSpec.describe Vk::API::Friends::Methods::GetByPhones do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :phones }
    it { is_expected.to include :fields }
  end
end
