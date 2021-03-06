# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/market/methods/edit'

RSpec.describe Vk::API::Market::Methods::Edit do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :item_id }
    it { is_expected.to include :name }
    it { is_expected.to include :description }
    it { is_expected.to include :category_id }
    it { is_expected.to include :price }
    it { is_expected.to include :deleted }
    it { is_expected.to include :main_photo_id }
    it { is_expected.to include :photo_ids }
  end
end
