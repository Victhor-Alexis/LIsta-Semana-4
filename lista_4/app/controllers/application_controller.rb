class ApplicationController < ActionController::API
    def authentication_failure
       render json: { message: 'Não conseguimos efetuar seu login, ou você está tentando acessar métodos que não devia' }, status: 401
    end
end
