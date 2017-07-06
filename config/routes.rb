Rails.application.routes.draw do
  get 'home/index'

  get 'about_me/index'
  get 'my_work/index'
  get 'book_online/index'
  get 'who_am_i/index'
  get 'what_ive_done/index'
  get 'client_testimonials/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
