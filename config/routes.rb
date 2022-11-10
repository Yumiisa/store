Rails.application.routes.draw do
 namespace :api, defaults: {json: :format} do
  namespace :v1 do
   resources :users, only: %i[show create update destroy]
  end
 end
end
