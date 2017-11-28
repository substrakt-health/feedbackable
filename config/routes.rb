Rails.application.routes.draw do
  resources :service_feedbacks, only: [:new, :create, :update]
end
