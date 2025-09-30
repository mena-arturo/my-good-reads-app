class Book < ApplicationRecord
  has_many :reviews
  has_many :authors
  has_many :users
end
