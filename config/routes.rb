Rails.application.routes.draw do
	root 'products#new_product'
	resources :products do 
		collection do
			get :new_product
			post :create_product
		end
		member do
			get :edit_product
			get :show_product
			patch :update_product
			delete :destroy_product
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
