Rails.application.routes.draw do
 
  devise_for :users
root to: "tops#index"
resources :characters do
end
resources :places, only: [:index, :new, :create ]

end
