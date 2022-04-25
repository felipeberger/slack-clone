require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        first_name: "First Name"
      ),
      User.create!(
        first_name: "First Name"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
  end
end
