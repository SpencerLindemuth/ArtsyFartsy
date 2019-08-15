class PiecesController < ApplicationController
    def index
        @pieces = Piece.all.first
        render json: @pieces
    end

    def show

    end

end