Rails.application.routes.draw do
		get  '/'   ,to: 'blogs#index'
    resources :blogs
end
