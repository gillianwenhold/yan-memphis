module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :poll, Types::PollType, null: false do
      argument :id, ID, required: true
    end

    def poll(id:)
      Poll.find(id)
    end
  end
end
