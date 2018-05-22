Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ru/ do
    resources :tobacco_cipher do
      post 'test_cipher', on: :collection
    end
    get 'welcome/index'
    get 'tastes/index'
    root 'welcome#index'
  end
end
