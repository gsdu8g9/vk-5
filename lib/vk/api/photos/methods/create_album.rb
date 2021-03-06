# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Creates an empty photo album.
        class CreateAlbum < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.createAlbum'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :title Album title.
          #   @option arguments [Integer] :group_id ID of the community in which the album will be created.
          #   @option arguments [String] :description Album description.
          #   @option arguments [Array] :privacy_view @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :privacy_comment @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :upload_by_admins_only @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :comments_disabled @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Photos::Methods::CreateAlbum]

          # @!group Arguments

          # @return [String] Album title.
          attribute :title, API::Types::Coercible::String
          # @return [Integer] ID of the community in which the album will be created.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Album description.
          attribute :description, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_view, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default([])
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_comment, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default([])
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :upload_by_admins_only, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :comments_disabled, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
