# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/newsfeed/methods/get_comments'

RSpec.describe Vk::API::Newsfeed::Methods::GetComments do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :count }
    it { is_expected.to include :filters }
    it { is_expected.to include :reposts }
    it { is_expected.to include :start_time }
    it { is_expected.to include :end_time }
    it { is_expected.to include :start_from }
    it { is_expected.to include :fields }
  end
end
