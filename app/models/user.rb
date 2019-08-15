class User < ApplicationRecord
    has_secure_password
    validates :username, :uniqueness => {:case_sensitive => false}
    has_many :galleries
    has_many :pieces, through: :galleries
    

end