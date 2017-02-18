class Post < ApplicationRecord
  belongs_to :user

  enum status: [:draft, :review, :published]
end
