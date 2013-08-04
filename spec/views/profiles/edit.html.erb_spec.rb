require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :first_name => "MyString",
      :last_name => "MyString",
      :description => "MyText",
      :height => 1,
      :weight => 1,
      :eyes_color => "MyString",
      :hair_color => "MyString",
      :morphology => "MyString",
      :hobbies => "",
      :looking_for => "MyString",
      :style => "MyString",
      :life_style => "",
      :ethny => "MyString",
      :alcool_level => "MyString",
      :smoker_level => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do
      assert_select "input#profile_first_name[name=?]", "profile[first_name]"
      assert_select "input#profile_last_name[name=?]", "profile[last_name]"
      assert_select "textarea#profile_description[name=?]", "profile[description]"
      assert_select "input#profile_height[name=?]", "profile[height]"
      assert_select "input#profile_weight[name=?]", "profile[weight]"
      assert_select "input#profile_eyes_color[name=?]", "profile[eyes_color]"
      assert_select "input#profile_hair_color[name=?]", "profile[hair_color]"
      assert_select "input#profile_morphology[name=?]", "profile[morphology]"
      assert_select "input#profile_hobbies[name=?]", "profile[hobbies]"
      assert_select "input#profile_looking_for[name=?]", "profile[looking_for]"
      assert_select "input#profile_style[name=?]", "profile[style]"
      assert_select "input#profile_life_style[name=?]", "profile[life_style]"
      assert_select "input#profile_ethny[name=?]", "profile[ethny]"
      assert_select "input#profile_alcool_level[name=?]", "profile[alcool_level]"
      assert_select "input#profile_smoker_level[name=?]", "profile[smoker_level]"
    end
  end
end
