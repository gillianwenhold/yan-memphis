# frozen_string_literal: true

module Types
  class ResponseType < Types::BaseObject
    field :id, ID, null: false
    field :option, Types::OptionType, null: false
    field :poll, Types::PollType, null: false
  end
end
