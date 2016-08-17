Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # GET / => display the form
  # GET /decrypt => decrypt text and render results

  root "crypto#query"
  get "decrypt", to: "crypto#decrypt"

end
