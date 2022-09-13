class CreateCategoryBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :category_budgets do |t|
      t.references :budget, null: false, foreign_key: { to_table: :budgets }, index: true
      t.references :category, null: false, foreign_key: { to_table: :categories }, index: true

      t.timestamps
    end
  end
end
