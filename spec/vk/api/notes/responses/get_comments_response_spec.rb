# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/notes/responses/get_comments_response'

RSpec.describe Vk::API::Notes::Responses::GetCommentsResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Response }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :response }
  end
end
