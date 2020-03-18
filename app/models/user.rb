class User < ApplicationRecord
    has_many :notes

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
