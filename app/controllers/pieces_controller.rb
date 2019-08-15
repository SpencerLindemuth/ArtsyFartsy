class PiecesController < ApplicationController
    def index
        @pieces = Piece.all.sample(100)
        render json: @pieces
    end

    def show

    end

end