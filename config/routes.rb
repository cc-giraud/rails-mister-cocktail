Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get "cocktails", to: "cocktails#index"

  get "cocktails/new", to: "cocktails#new"
  get "cocktails/:id", to: "cocktails#show"
  post "cocktails", to: "cocktails#create"

  # NB: The `show` route needs to be *after* `new` route.

  get "cocktails/42/edit", to: "cocktails#edit"
  patch "cocktails/42", to: "cocktails#update"

  delete "doses/25", to: "cocktails#destroy"
end
