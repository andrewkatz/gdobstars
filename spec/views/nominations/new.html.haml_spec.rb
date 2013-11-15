require 'spec_helper'

describe "nominations/new" do
  before(:each) do
    assign(:nomination, stub_model(Nomination,
      :active => false,
      :reason => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new nomination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", nominations_path, "post" do
      assert_select "input#nomination_active[name=?]", "nomination[active]"
      assert_select "input#nomination_reason[name=?]", "nomination[reason]"
      assert_select "input#nomination_type[name=?]", "nomination[type]"
    end
  end
end
