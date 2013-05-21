SweetArticles::Application.routes.draw do
  resources :categories do
    resources :articles 
  end

  get '/articles/:month/:day/:year/:title' => "articles#redirect"

end
