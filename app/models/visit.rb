class Visit
  include Mongoid::Document
  belongs_to :visitor, class_name: "Profile", inverse_of: :visits
  belongs_to :visited, class_name: "Profile", inverse_of: :visited
end
