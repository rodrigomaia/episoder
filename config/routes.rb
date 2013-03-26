Episoder::Application.routes.draw do
  resources :generos

  resources :seriados do
    resources :temporadas
    collection do
      get :buscar
    end
  end
  
  root :to => 'seriados#index'
end
