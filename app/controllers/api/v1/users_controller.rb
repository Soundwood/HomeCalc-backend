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
            render json: @user, status: :created, location: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
        # @user = User.create!(user_params)
        # render json: @user
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
