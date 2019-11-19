class User < ApplicationRecord
    has_secure_password

    validates :username, :length => { :within => 8..25 },
                         :uniqueness => true
end
