Rails.application.routes.draw do
  resource :tasks do
    collection do
      post 'store'
    end
  end
end
