class List < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :movies
  has_many :users, through :movies
end
