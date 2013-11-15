require 'spec_helper'

describe "nominations/show" do
  before(:each) do
    @nomination = assign(:nomination, stub_model(Nomination,
      :active => false,
      :reason => "Reason",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/Reason/)
    rendered.should match(/Type/)
  end
end
