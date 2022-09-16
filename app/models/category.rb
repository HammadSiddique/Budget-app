class Category < ApplicationRecord
    belongs_to :user

    has_many :budgets, through: :category_budgets
	has_many :category_budgets, dependent: :destroy

    validates :name, presence: true, length: { maximum: 50 }
end