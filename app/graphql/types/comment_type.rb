module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :commenter, String, null: false
    field :body, String, null: false
    field :article_id, ID, null: false
  end
end
