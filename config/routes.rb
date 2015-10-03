Rails.application.routes.draw do

  mount Commontator::Engine => '/commontator'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  resources :pins do
    member do
      put "like", to: "pins#upvote"
    end
  end

  root "pins#index"
end
