# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Widgets < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class CommentMedia < Vk::Schema::Object
        # @return [String] Media type
        attribute :type, API::Types::Coercible::String.enum("audio", "photo", "video").optional.default(nil)
        # @return [Integer] Media owner's ID
        attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Media item ID
        attribute :item_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of the preview image (type=photo only)
        attribute :thumb_src, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
