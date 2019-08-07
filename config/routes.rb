Rails.application.routes.draw do
  root to: 'tasks#index'
  resource :tasks do
    collection do
      post 'store'
    end
  end
end
