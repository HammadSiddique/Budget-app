class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

         has_many :budgets, dependent: :destroy
         has_many :categories, through: :category_budgets, dependent: :destroy
         has_many :category_budgets, through: :categories, dependent: :destroy

         validates :name, presence: true, length: {maximum: 100}
end
