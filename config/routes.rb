Rails.application.routes.draw do
 namespace :api, defaults: {json: :format} do
  namespace :v1 do
   resources :users, only: [:show]
  end
 end
end
