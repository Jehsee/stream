class Arena < ApplicationRecord
  has_many :messages
  has_many :users
end
