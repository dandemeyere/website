Website::Application.routes.draw do
  get "/blog", to: "blog_posts#index"
  get "/blog/:permalink", to: "blog_posts#show"
  get "/about", to: "pages#about"
  root to: "pages#index"
end
