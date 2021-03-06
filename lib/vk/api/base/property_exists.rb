# frozen_string_literal: true
require 'vk/api/types'

module Vk
  module API
    class Base < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      PropertyExists = API::Types::Coercible::Int.enum(1)
    end
  end
end
