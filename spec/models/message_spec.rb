require 'rails_helper'

RSpec.describe Message, type: :model do

  before do
    @user = FactoryBot.create(:user)
    @message = FactoryBot.create(:message, user: @user)
  end

  it "creates an invalid message" do
    expect(Message.new).not_to be_valid
  end

  it "creates a valid message" do
    expect(@message).to be_valid
  end

  describe 'associations' do
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:content) }
  end

end
