Rails.application.routes.draw do
  resources :cartoons do
    resources :characters do
      collection do
        get :by_name
      end
    end
  end
end
