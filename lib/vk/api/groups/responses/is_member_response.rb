# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class IsMemberResponse < Vk::Schema::Response
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, API::Types::Coercible::Array.member(API::Groups::MemberStatusFull).optional.default(nil)
        end
      end
    end
  end
end
