# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AddGroupResponse < Vk::Schema::Response
          # @return [API::Base::OkResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, API::Base::OkResponse.optional.default(nil)
        end
      end
    end
  end
end
