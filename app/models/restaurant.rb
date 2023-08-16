class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all

  validates :name, presence: true, length: { minimum: 3 }
  validates :address, presence: true, length: { minimum: 10 }
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
end
