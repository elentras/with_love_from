Fabricator(:visit) do
  visited   { Profile.all.sample }
  visitor   { Profile.all.sample }
end
