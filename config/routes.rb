Rails.application.routes.draw do
 
  devise_for :users
root to: "tops#index"
resources :characters do
end
resources :places, only: [:index, :new, :create, :destroy, :edit, :update ] do
  member do
    delete :place_destroy
  end
  resources :messages, only: [:index, :create]
end
end
