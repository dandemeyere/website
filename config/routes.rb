Website::Application.routes.draw do
  get "/blog", to: "blog_posts#index"
  get "/blog/:permalink", to: "blog_posts#show"
  root to: 'pages#index'
end
