require 'spec_helper'

describe "nominations/edit" do
  before(:each) do
    @nomination = assign(:nomination, stub_model(Nomination,
      :active => false,
      :reason => "MyString",
      :type => ""
    ))
  end

  it "renders the edit nomination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", nomination_path(@nomination), "post" do
      assert_select "input#nomination_active[name=?]", "nomination[active]"
      assert_select "input#nomination_reason[name=?]", "nomination[reason]"
      assert_select "input#nomination_type[name=?]", "nomination[type]"
    end
  end
end
