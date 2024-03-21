module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :body, String, null: false
    field :comments, [CommentType], null: true

    def comments
      object.comments
    end
  end
end
