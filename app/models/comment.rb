class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy

  validates :body,
  presence: { mesage: "Comment can't be blank" }

end
