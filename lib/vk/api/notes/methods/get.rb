# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Methods
        # Returns a list of notes created by a user.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notes.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :note_ids Note IDs.
          #   @option arguments [Integer] :user_id Note owner ID.
          #   @option arguments [Integer] :count Number of notes to return.
          #   @return [Notes::Methods::Get]

          # @!group Arguments

          # @return [Array] Note IDs.
          attribute :note_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).optional.default(nil)
          # @return [Integer] Note owner ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of notes to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
        end
      end
    end
  end
end
