Rails.application.routes.draw do
  resources :cartoons do
    get "page/:page", action: :index, on: :collection
    resources :characters do
      get "page/:page", action: :index, on: :collection
      collection do
        get :by_name
      end
    end
  end
end
