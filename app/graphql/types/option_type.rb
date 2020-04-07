# frozen_string_literal: true

module Types
  class OptionType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :responses, [Types::ResponseType], null: true
    field :poll, Types::PollType, null: false
  end
end
