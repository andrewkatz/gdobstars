require 'spec_helper'

describe "nominations/index" do
  before(:each) do
    assign(:nominations, [
      stub_model(Nomination,
        :active => false,
        :reason => "Reason",
        :type => "Type"
      ),
      stub_model(Nomination,
        :active => false,
        :reason => "Reason",
        :type => "Type"
      )
    ])
  end

  it "renders a list of nominations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
