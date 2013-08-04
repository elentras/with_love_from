class Message
  include Mongoid::Document
  field :content, type: String
  field :state, type: Boolean, default: false

  belongs_to :sender, class_name: 'Profile', inverse_of: :sender
  belongs_to :reciever, class_name: 'Profile', inverse_of: :reciever
end
