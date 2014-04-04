Website::Application.routes.draw do
  resources :messages
  get "/rails-engineer" => redirect("/blog/service-oriented-rails-engineer")
  # Old routes mapping
  get "/blog/2010/8/31/website-of-the-week-thredup" => redirect("/blog/website-of-the-week-thredup-com/")

  get '/blog/:year/:month/:day/:permalink' => "blog_posts#show"
  get "/blog", to: "blog_posts#index"
  get "/blog/rss", to: "blog_posts#rss"
  get "/blog/:permalink", to: "blog_posts#show"
  get "/about", to: "pages#about"
  get "/work", to: "pages#work"
  get "/contact", to: "pages#contact"
  root to: "pages#index"
end
