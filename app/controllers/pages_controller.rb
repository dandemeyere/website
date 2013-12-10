class PagesController < ApplicationController
  def index
    @content[:meta_title] = "Dan DeMeyere"
    @content[:meta_keywords] = "dan demeyere, dan demeyer, michigan state dan d, thredup engineer, director of engineering, rails engineer blog, silicon valley engineer blog, san francisco developer, michigan rails engineer"
    @content[:meta_description] = "By means of Michigan and Los Angeles, I have found my way to beautiful San Francisco. This is where I collect my thoughts about my journey working at a start-up."
  end

  def about
    @content[:meta_title] = "Dan DeMeyere's Bio"
    @content[:meta_keywords] = "who is dan demeyere, about dan demeyere, san francisco rails engineer"
    @content[:meta_description] = "Dan DeMeyere in under 200 words."
  end
end
