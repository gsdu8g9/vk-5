# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class List < Vk::Schema::Object
        # @return [Integer] List ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] List title
        attribute :title, API::Types::Coercible::String
        # @return [API::Base::BoolInt] Information whether reposts hiding is enabled
        attribute :no_reposts, API::Base::BoolInt.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :source_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).optional.default(nil)
      end
    end
  end
end
