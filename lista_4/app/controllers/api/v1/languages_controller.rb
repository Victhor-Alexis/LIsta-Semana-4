class Api::V1::LanguagesController < ApplicationController

    acts_as_token_authentication_handler_for Admin

    def index
        langs = Language.all
        render json: langs, status: :ok
    end

    def show
        lang = Language.find(params[:id])
        render json: lang, status: 200

        rescue StandardError
            head(:not_found)
    end

    def create
        lang = Language.new(language_params)
        lang.save!
        render json: lang, status: 201
    rescue StandardError
        head(:unprocessable_entity)    
    end

    def update
        lang = Language.find(params[:id])
        lang.update!(language_params)
        render json: lang, status: 200
    rescue StandardError
        head(:unprocessable_entity)
    end

    def delete
        lang = Language.find(params[:id])
        lang.destroy
        render json: lang, status: 200
    rescue StandardError
        head(:bad_request)
    end

    private

    def language_params
        params.require(:language).permit(
            :name,
            :teacher_id
        )
    end
end
