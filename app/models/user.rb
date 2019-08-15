class User < ApplicationRecord
    has_secure_password
    validates :username, {:uniqueness => true, :case_sensitive => false}
    has_many :pieces
    

end