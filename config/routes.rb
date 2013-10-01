Bikeshop::Application.routes.draw do

  resources :frame_colors
  resources :orders

  root to: 'orders#index'

end
