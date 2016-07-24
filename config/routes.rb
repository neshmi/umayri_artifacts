Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artifacts

  get 'artifacts_report', to: 'reports#artifacts', as: 'artifacts_report'
  get 'objects_report', to: 'reports#objects', as: 'objects_report'
  get 'full_report', to: 'reports#all', as: 'full_report'

  root to: "artifacts#index"

end
