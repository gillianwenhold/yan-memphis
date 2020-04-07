# frozen_string_literal: true

module Types
  class PollType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :options, [Types::OptionType], null: true
    field :responses, [Types::ResponseType], null: true
  end
end
