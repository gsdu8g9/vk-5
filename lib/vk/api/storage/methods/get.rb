# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Storage < Vk::Schema::Namespace
      module Methods
        # Returns a value of variable with the name set by key parameter.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'storage.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :key @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :keys @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Storage::Methods::Get]

          # @!group Arguments

          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :key, API::Types::Coercible::String.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :keys, API::Types::Coercible::Array.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end