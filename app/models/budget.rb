class Budget < ApplicationRecord
  belongs_to :user

  has_many :category_budgets, dependent: :destroy
  has_many :categories, through: :category_budgets

  validates :name, presence: true, length: { maximum: 50 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
