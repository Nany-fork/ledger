class Balance < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :description, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true }
end
