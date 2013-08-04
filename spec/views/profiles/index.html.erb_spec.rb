require 'spec_helper'

describe "profiles/index" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :first_name => "First Name",
        :last_name => "Last Name",
        :description => "MyText",
        :height => 1,
        :weight => 2,
        :eyes_color => "Eyes Color",
        :hair_color => "Hair Color",
        :morphology => "Morphology",
        :hobbies => "",
        :looking_for => "Looking For",
        :style => "Style",
        :life_style => "",
        :ethny => "Ethny",
        :alcool_level => "Alcool Level",
        :smoker_level => "Smoker Level"
      ),
      stub_model(Profile,
        :first_name => "First Name",
        :last_name => "Last Name",
        :description => "MyText",
        :height => 1,
        :weight => 2,
        :eyes_color => "Eyes Color",
        :hair_color => "Hair Color",
        :morphology => "Morphology",
        :hobbies => "",
        :looking_for => "Looking For",
        :style => "Style",
        :life_style => "",
        :ethny => "Ethny",
        :alcool_level => "Alcool Level",
        :smoker_level => "Smoker Level"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Eyes Color".to_s, :count => 2
    assert_select "tr>td", :text => "Hair Color".to_s, :count => 2
    assert_select "tr>td", :text => "Morphology".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Looking For".to_s, :count => 2
    assert_select "tr>td", :text => "Style".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Ethny".to_s, :count => 2
    assert_select "tr>td", :text => "Alcool Level".to_s, :count => 2
    assert_select "tr>td", :text => "Smoker Level".to_s, :count => 2
  end
end
