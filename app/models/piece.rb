class Piece < ApplicationRecord
    has_many :galleries
    has_many :users, through: :galleries
    def user_preferred

    end

end