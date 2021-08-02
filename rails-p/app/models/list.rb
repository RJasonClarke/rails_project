class List < ApplicationRecord
  belongs_to :user
  has_many :movies
  has_many :users, through: :movies
end
