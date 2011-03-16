Builderthing::Application.routes.draw do

  resources :package_managers, path: '' do
    get '/:package_name' => 'canonical_packages#show', as: 'package'
  end
  
end
