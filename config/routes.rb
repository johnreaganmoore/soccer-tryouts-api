Rails.application.routes.draw do
    resources :leagues
    resources :teams
    resources :tryouts

    get 'sign', controller: 'sign'

end
