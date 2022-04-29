require 'rails_helper'

RSpec.describe Message, type: :model do

  it "creates an invalid message" do
    expect(Message.new).not_to be_valid
  end

  it "creates a valid message" do
    expect(Message.new(content: "test")).to be_valid
  end

  describe 'associations' do
    it { should belong_to(:user).without_validating_presence }
  end

end
