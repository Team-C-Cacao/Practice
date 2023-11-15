Rails.application.routes.draw do
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :public do
    get 'eggs/index'
    get 'eggs/show'
  end
end
