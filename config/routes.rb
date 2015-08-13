Rails.application.routes.draw do
  root :to => 'home#index'

  scope 'register', module: 'register', as: 'register' do
    resources :students
    resources :courses
    resources :classrooms
  end
end
