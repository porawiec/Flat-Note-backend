class User < ApplicationRecord
    has_many :notes

    has_secure_password
end
