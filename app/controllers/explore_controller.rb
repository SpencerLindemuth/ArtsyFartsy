class ExploreController < ApplicationController

    def index
        @pieces = Piece.all.sample(Piece.all.length)
        render json: @pieces
    end

end