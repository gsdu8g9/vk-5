# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class AudioUploadResponse < Vk::Schema::Object
        # @return [String] Redirect URL
        attribute :redirect, API::Types::Coercible::String.optional
        # @return [Integer] Upload server number
        attribute :server, API::Types::Coercible::Int.optional
        # @return [String] Uploaded aduio data
        attribute :audio, API::Types::Coercible::String.optional
        # @return [String] Uploading hash
        attribute :hash, API::Types::Coercible::String.optional
      end
    end
  end
end