module Types
  class LinkType < BaseNode
    field :id, ID, null: false
    field :created_at, DateTimeType, null: false
    field :url, String, null: false
    field :description, String, null: false
    field :posted_by, UserType, null: false, method: :user
    field :votes, [Types::VoteType], null: false

    def votes
      Loaders::AssociationLoader.for(Link, :votes).load(object)
    end
  end
end
