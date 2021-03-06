# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns Callback API confirmation code for the community.
        class GetCallbackConfirmationCode < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.getCallbackConfirmationCode'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @return [Groups::Methods::GetCallbackConfirmationCode]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
