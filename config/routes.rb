Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/member_details' => 'members#index'

  resources :companies

  namespace :api do
    namespace :v1 do
      resources :companies
    end
  end

  resources :customers
  # resources :customers do
  #   collection do
  #     delete 'destroy_all', to: 'customers#destroy_all'
  #   end
  # end


resources :orders, only: [] do
  member do
    patch 'confirm'
    patch 'receive_payment'
    patch 'send_load_authority'
  end
end
resources :loading_depots do
  collection do
    delete 'destroy_all', to: 'loading_depots#destroy_all'
  end
end
# resources :loading_depots
resources :proforma_invoices
resources :invoices
resources :gate_passes, only: [:create]
resources :supplier_invoices

resources :proforma_invoices do
  member do
    put 'confirm_payment', to: 'proforma_invoices#confirm_payment'
  end
end

resources :proforma_invoice_rows

resources :proforma_invoices do
  resources :proforma_invoice_rows, only: [:create]
end

resources :mainlines
resources :products

resources :proforma_invoices do
  collection do
    delete 'destroy_all', to: 'proforma_invoices#destroy_all'
  end
end

  
end
