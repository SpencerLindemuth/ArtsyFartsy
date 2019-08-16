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
end