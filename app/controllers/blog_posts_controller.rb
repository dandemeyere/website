class BlogPostsController < ApplicationController
  before_filter :pull_default_content, only: [:index, :rss]

  def index
  end

  def show
    @post = BlogPost.find_by_permalink(params[:permalink])
    @content[:meta_title] = @post.meta_title
    @content[:meta_keywords] = @post.meta_keywords
    @content[:meta_description] = @post.meta_description
  end

  def rss
    render layout: false
  end

  protected
  def pull_default_content
    @posts = BlogPost.published.order("published_at DESC")
    @content[:meta_title] = "Dan DeMeyere's Blog"
    @content[:meta_keywords] = "dan demeyere's blog, dan demeyere, rails engineer blog, silicon valley engineer blog, san francisco developer, michigan rails engineer"
    @content[:meta_description] = "A blog detailing of the journey of Dan DeMeyere, Director of Engineering at thredUP.com, which is start-up built upon Ruby on Rails based in San Francisco."
  end
end
