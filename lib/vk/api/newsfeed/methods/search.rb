# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Returns search results by statuses.;
        class Search < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'newsfeed.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string (e.g., 'New Year').
          #   @option arguments [Boolean] :extended '1' — to return additional information about the user or community that placed the post.
          #   @option arguments [Integer] :count Number of posts to return.
          #   @option arguments [Number] :latitude Geographical latitude point (in degrees, -90 to 90) within which to search.;
          #   @option arguments [Number] :longitude Geographical longitude point (in degrees, -180 to 180) within which to search.;
          #   @option arguments [Integer] :start_time Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
          #   @option arguments [Integer] :end_time Latest timestamp (in Unix time) of a news item to return. By default, the current time.
          #   @option arguments [String] :start_from @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :fields Additional fields of  and  to return.
          #   @return [Newsfeed::Methods::Search]

          # @!group Arguments

          # @return [String] Search query string (e.g., 'New Year').
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' — to return additional information about the user or community that placed the post.
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] Number of posts to return.
          attribute :count, API::Types::Coercible::Int.optional.default(30)
          # @return [Number] Geographical latitude point (in degrees, -90 to 90) within which to search.;
          attribute :latitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Geographical longitude point (in degrees, -180 to 180) within which to search.;
          attribute :longitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Earliest timestamp (in Unix time) of a news item to return. By default, 24 hours ago.
          attribute :start_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Latest timestamp (in Unix time) of a news item to return. By default, the current time.
          attribute :end_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :start_from, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Additional fields of  and  to return.
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
