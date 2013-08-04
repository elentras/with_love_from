require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Eyes Color/)
    rendered.should match(/Hair Color/)
    rendered.should match(/Morphology/)
    rendered.should match(//)
    rendered.should match(/Looking For/)
    rendered.should match(/Style/)
    rendered.should match(//)
    rendered.should match(/Ethny/)
    rendered.should match(/Alcool Level/)
    rendered.should match(/Smoker Level/)
  end
end
