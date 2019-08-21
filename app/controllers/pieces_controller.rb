class PiecesController < ApplicationController
    def index
        @pieces = Piece.all.sample(100)
        render json: @pieces
    end

    def show
        @piece = Piece.find(params[:id])
        render json: @piece
    end

end