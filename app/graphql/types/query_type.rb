module Types
  class QueryType < BaseObject
    field :all_links, resolver: Resolvers::LinksSearch
    field :_all_links_meta, QueryMetaType, null: false

    field :simple_links, LinkType.connection_type, null: false

    def simple_links
      Link.all
    end

    def _all_links_meta
      Link.count
    end
  end
end
