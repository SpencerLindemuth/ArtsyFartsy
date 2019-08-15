class PiecesController < ApplicationController
    def index
        @pieces = Piece.all[0..100]
        render json: @pieces
    end

    def show

    end

end