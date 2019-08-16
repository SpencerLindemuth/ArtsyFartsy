class PiecesController < ApplicationController
    def index
        @pieces = Piece.all[(Piece.all.length-100)..Piece.all.length]
        render json: @pieces
    end

    def show

    end

end