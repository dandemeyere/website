class BlogPost < ActiveRecord::Base
  scope :published, lambda { where("published_at < ?", Time.now) }
  scope :next_post, lambda { |post| published.where('published_at < ?', post.published_at).order("published_at DESC") }
  scope :previous_post, lambda { |post| published.where('published_at > ?', post.published_at).order("published_at ASC") }
end
