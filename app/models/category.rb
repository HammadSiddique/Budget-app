class Category < ApplicationRecord
    belongs_to :user

	has_many :category_budgets, dependent: :destroy
    has_many :budgets, through: :category_budgets

    validates :name, presence: true, length: { maximum: 50 }
end