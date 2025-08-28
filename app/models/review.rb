class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book
  belongs_to :review_type  
end
