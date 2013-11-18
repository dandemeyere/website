class BlogPost < ActiveRecord::Base
  scope :published, lambda { where("published_at < ?", Time.now) }
end
