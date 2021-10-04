Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      scope 'teachers' do
        get 'index', to: 'teachers#index'
        get 'show/:id', to: 'teachers#show'
        get 'my_students/:id', to: 'teachers#my_students'
        post 'create', to: 'teachers#create'
        patch 'update/:id', to: 'teachers#update'
        delete 'delete/:id', to: 'teachers#delete'
      end

      scope 'students' do
        get 'index', to: 'students#index'
        get 'show/:id', to: 'students#show'
        post 'create', to: 'students#create'
        patch 'update/:id', to: 'students#update'
        delete 'delete/:id', to: 'students#delete'
      end

      scope 'languages' do
        get 'index', to: 'languages#index'
        get 'show/:id', to: 'languages#show'
        post 'create', to: 'languages#create'
        patch 'update/:id', to: 'languages#update'
        delete 'delete/:id', to: 'languages#delete'
      end
    end
  end
end
