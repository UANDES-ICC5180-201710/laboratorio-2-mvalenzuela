Rails.application.routes.draw do
  resources :courses
  resources :people
  resources :people_courses

  get '/add_student_to_course' => 'courses#add_student_to_course'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
