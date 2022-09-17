require 'rails_helper'

RSpec.describe Budget, type: :model do
    describe 'Validation tests for budget model' do
        it 'not valid without a name' do
            budget = Budget.create(name: nil, amount: 100)
            expect(budget).to_not be_valid
        end

        it 'not valid without any amount' do
            budget = Budget.create(name: 'name', amount: nil)
            expect(budget).to_not be_valid
        end
    end
end