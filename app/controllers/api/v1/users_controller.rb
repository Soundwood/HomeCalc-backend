class Api::V1::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all
        render json: @users
    end
    def show
        render json: @user
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            render json: @user, status: :created
        else
            render json: {
                error: "#{@user.errors.full_messages.to_sentence}"
            }
        end
    end
    def update
        @user.update(user_params)
        head :no_content
    end
    def destroy
        @user.destroy
        head :no_content
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

    def set_user
        @user = User.find_by_id(params['id'])
    end
end
