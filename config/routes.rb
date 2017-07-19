Rails.application.routes.draw do
  resources :cartoons do
    resources :characters
  end
end
