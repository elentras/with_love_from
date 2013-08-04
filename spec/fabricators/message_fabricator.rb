Fabricator(:message) do
  content     { Faker::HipsterIpsum.paragraph }
  state       { [true, false].sample }
  sender      { Profile.all.sample }
  reciever    { Profile.all.sample }
end
