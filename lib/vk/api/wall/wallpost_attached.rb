# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WallpostAttached < Vk::Schema::Object
        # @return [Integer] Post ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Post author ID
        attribute :from_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Post addresse
        attribute :to_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Date of publishing in Unixtime
        attribute :date, API::Types::Coercible::Int.optional.default(nil)
        # @return [API::Wall::PostType] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :post_type, API::Wall::PostType.optional.default(nil)
        # @return [String] Post text
        attribute :text, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Information whether current user can delete the post
        attribute :can_delete, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Post signer ID
        attribute :signer_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :attachments, API::Types::Coercible::Array.member(API::Wall::WallpostAttachment).optional.default(nil)
        # @return [API::Base::Geo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :geo, Dry::Types[API::Base::Geo].optional.default(nil)
        # @return [API::Wall::PostSource] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :post_source, Dry::Types[API::Wall::PostSource].optional.default(nil)
        # @return [API::Base::CommentsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :comments, Dry::Types[API::Base::CommentsInfo].optional.default(nil)
        # @return [API::Base::LikesInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::LikesInfo].optional.default(nil)
        # @return [API::Base::RepostsInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :reposts, Dry::Types[API::Base::RepostsInfo].optional.default(nil)
        # @return [Integer] Source post owner's ID
        attribute :copy_owner_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Source post ID
        attribute :copy_post_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Repost comment
        attribute :copy_text, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
