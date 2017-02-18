class Post < ApplicationRecord
  belongs_to :user

  enum status: [:draft, :review, :published]
  counter_culture :user, column_name: Proc.new { |post| post.published? ? 'posts_count' : nil }
end
