require 'rails_helper'

RSpec.describe User, type: :model do
  
  before do
    @user = FactoryBot.create(:user)
    @message = FactoryBot.create(:message, user: @user)
  end

  describe 'associations' do
    it { should have_many(:messages) }
  end

  it 'returns associated messages' do
    expect(@user.messages).not_to be_nil
  end

end
