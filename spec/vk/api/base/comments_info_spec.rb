# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/base/comments_info'

RSpec.describe Vk::API::Base::CommentsInfo do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :count }
    it { is_expected.to include :can_post }
  end
end
