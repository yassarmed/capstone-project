class Item < ApplicationRecord
  has_many :favorites
  has_many :users, through: :items
end
