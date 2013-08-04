Fabricator(:profile) do
  nick_name     { Faker::Name.first_name }
  first_name    { Faker::Name.first_name }
  last_name     { Faker::Name.last_name }
  description   { Faker::HipsterIpsum.paragraph }
  gender        { Faker::Identification.gender }
  country       { Faker::Address.country }
  city          { Faker::Address.city }
  height        { rand(160..200) }
  weight        { rand(55..120) }
  eyes_color    { Profile::EYE_COLOR.sample }
  hair_color    { Profile::HAIR_COLOR.sample }
  morphology    { Profile::MORPHOLOGIES.sample }
  hobbies       { Profile::HOBBIES.sample }
  looking_for   { Faker::Identification.gender }
  birth_date    { Faker::Time.date(year_range: 10, year_latest: 18) }
  style         { Profile::STYLE.sample }
  life_style    { Profile::LIFE_STYLE.sample }
  ethny         { Faker::Identification.ethnicity }
  alcool_level  { Profile::DEPENDENCIES.sample }
  smoker_level  { Profile::DEPENDENCIES.sample }
end