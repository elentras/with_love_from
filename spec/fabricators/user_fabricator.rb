Fabricator(:user) do
  email                   { Faker::Internet.email }
  password                'password'
  confirmed_at            { Time.now }

  after_create do |user|
    user.profile = Fabricate :profile
  end
end
