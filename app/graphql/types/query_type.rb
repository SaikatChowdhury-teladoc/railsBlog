module Types
  class QueryType < Types::BaseObject
    field :articles, [ArticleType], null: false
    field :article, ArticleType, null: true do
      argument :id, ID, required:true
    end
    def articles
      Article.first
    end
    def article(id:)
      Article.find_by(id: id)
    end
  end
end
