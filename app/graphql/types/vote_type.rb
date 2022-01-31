module Types
  class VoteType < BaseNode
    field :created_at, DateTimeType, null: false
    field :user, UserType, null: false
    field :link, LinkType, null: false

    def user
      Loaders::AssociationLoader.for(Vote, :user).load(object)
    end
  end
end
