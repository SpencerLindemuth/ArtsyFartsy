class HighlightController < ApplicationController

    def index
        @pieces = Piece.all.select{ |piece| piece.isHighlight == true}
        render json: @pieces
    end

end