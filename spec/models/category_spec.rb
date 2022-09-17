require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Validation tests for category model' do
    it 'not valid without a name' do
      group = Category.create(name: nil, icon: 'icon')
      expect(group).to_not be_valid
    end

    it 'not valid without a icon' do
      group = Category.create(name: 'name', icon: nil)
      expect(group).to_not be_valid
    end
  end
end
