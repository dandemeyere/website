class PagesController < ApplicationController
  def index
    @content[:meta_title] = "Dan DeMeyere"
    @content[:meta_keywords] = "dan demeyere, thredup engineer, director of engineering, rails engineer blog, san francisco developer, michigan rails engineer, dan demeyer, michigan state dan d, silicon valley engineer blog, "
    @content[:meta_description] = "By means of Michigan and Los Angeles, I have found my way to beautiful San Francisco. This is where I collect my thoughts about my journey working at a start-up."
  end

  def about
    @content[:meta_title] = "Dan DeMeyere's Bio"
    @content[:meta_keywords] = "who is dan demeyere, about dan demeyere, san francisco rails engineer"
    @content[:meta_description] = "Dan DeMeyere's professional life in under 200 words."
  end

  def contact
    @content[:meta_title] = "Contact Dan DeMeyere"
    @content[:meta_keywords] = "dan demeyere's email address, dan demeyere gmail, contact dan demeyere"
    @content[:meta_description] = "Send Dan DeMeyere an email."
  end

  def work
    @content[:meta_title] = "Dan DeMeyere's Work History"
    @content[:meta_keywords] = "who is dan demeyere, about dan demeyere, san francisco rails engineer"
    @content[:meta_description] = "Dan DeMeyere's work history from Michigan State University to Toyota to Green Planet Productions to Advizo to thredUP."
  end
end
