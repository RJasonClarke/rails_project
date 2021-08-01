class User < ApplicationRecord
    has_many :lists
    has_many :movies
    has_many :movie_lists, through: :movies, source: :list
    #has_many :categories, through :lists
end
