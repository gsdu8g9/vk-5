# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetAlbumsByVideo < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.getAlbumsByVideo'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :target_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :owner_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :video_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Video::Methods::GetAlbumsByVideo]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :target_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :video_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
