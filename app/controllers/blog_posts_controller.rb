class BlogPostsController < ApplicationController
  def index
    @posts = BlogPost.published.order("published_at DESC")
  end

  def show
    @post = BlogPost.find_by_permalink(params[:permalink])
    @content[:meta_title] = @post.meta_title
    @content[:meta_keywords] = @post.meta_keywords
    @content[:meta_description] = @post.meta_description
  end
end
