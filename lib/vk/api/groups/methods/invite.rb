# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Allows to invite friends to the community.
        class Invite < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.invite'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :user_id User ID.
          #   @return [Groups::Methods::Invite]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
