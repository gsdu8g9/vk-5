# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetProfileInfoResponse < Vk::Schema::Response
          # @return [API::Account::UserSettings] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Account::UserSettings].optional.default(nil)
        end
      end
    end
  end
end
