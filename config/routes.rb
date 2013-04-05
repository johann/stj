Sop::Application.routes.draw do
  

  resources :upcomings do
    collection { post :import }
  end

  resources :tests do
    collection { post :import }
  end

  get 'tags/:tag', to: 'honor_societies#index', as: :tag

  resources :scholarshipgrants do
    collection { post :import }
  end

  resources :honor_societies do
    collection { post :import }
  end

  resources :others do
    collection { post :import }
  end

  resources :internships do
    collection { post :import }
  end

  resources :job_opportunities do
    collection { post :import }
  end

  resources :scholarship_grants do
    collection { post :import }
  end

  resources :graduate_assistantships do
    collection { post :import }
  end

  resources :university_programs do
    collection { post :import }
  end

  resources :university_honor_societies do
    collection { post :import }
  end

  resources :academic_honor_societies do
    collection { post :import }
  end

  resources :greek_organizations do
    collection { post :import }
  end

  resources :student_organizations do
    collection { post :import }
  end

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"
  
  devise_for :users
  resources :users
end