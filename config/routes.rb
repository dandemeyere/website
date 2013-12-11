Website::Application.routes.draw do
  resources :messages
  get "/blog", to: "blog_posts#index"
  get "/blog/:permalink", to: "blog_posts#show"
  get "/about", to: "pages#about"
  get "/work", to: "pages#work"
  get "/contact", to: "pages#contact"
  root to: "pages#index"
end
