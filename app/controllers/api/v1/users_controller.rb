class Api::V1::UsersController < ApplicationController
    def show
        users=User.find(params[:id])
        render json: users

#    render json:User.find(params[:id])
    end
end
