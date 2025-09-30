class User < ApplicationRecord
  belongs_to :account
  belongs_to :country
  belongs_to :state
end
