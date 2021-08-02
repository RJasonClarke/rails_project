class User < ApplicationRecord
    has_secure_password
    has_many :lists
    has_many :movies
    has_many :movie_lists, through: :movies, source: :list
end
