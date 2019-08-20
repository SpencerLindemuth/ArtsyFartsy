class UsersController < ApplicationController
    def index
    end

    def add
        @user = User.find(params[:user_id])
        @piece = Piece.find(params[:piece][:id])
        @user.pieces << @piece
    end

    def gallery
        @user = User.find(params[:id])
        render json: @user.pieces
    end

    def destroy
        @user = User.find(params[:user_id])
        @user.pieces.destroy(params[:piece_id])
    end

    def create
        @user = User.new(params.permit(:username, :password))
        if @user.save
            render json: {id: @user.id, username: @user.username}
        else
            :bad_request
        end
    end
end