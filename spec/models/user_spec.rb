require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validation tests for user model' do
    it 'not valid without a name' do
      user1 = User.create(name: nil, email: 'testing@email.com', password: 'testing', password_confirmation: 'testing')
      expect(user1).to_not be_valid
    end

    it 'not valid without a email' do
      user1 = User.create(name: 'test', email: nil, password: 'testing', password_confirmation: 'testing')
      expect(user1).to_not be_valid
    end
  end
end
