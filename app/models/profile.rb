class Profile
  include Mongoid::Document
  field :nick_name, type: String
  field :first_name, type: String
  field :last_name, type: String
  field :gender, type: String
  field :city, type: String
  field :country, type: String
  field :description, type: String
  field :height, type: Integer
  field :weight, type: Integer
  field :eyes_color, type: String
  field :hair_color, type: String
  field :morphology, type: String
  field :hobbies, type: Array
  field :looking_for, type: String
  field :birth_date, type: Date
  field :style, type: String
  field :life_style, type: Array
  field :ethny, type: String
  field :alcool_level, type: String
  field :smoker_level, type: String

  belongs_to :user
  has_many :visitors, class_name: 'Visit', inverse_of: :visitor
  has_many :visited, class_name: 'Visit', inverse_of: :visited
  has_many :messages, class_name: 'Message', inverse_of: :reciever
  has_many :sended_messages, class_name: 'Message', inverse_of: :sender

  EYE_COLOR = %w{ blue green grey brown}
  HAIR_COLOR = %w{ redhead black blond white grey brown}
  MORPHOLOGIES = %w{ curvy normal strong fat slim}
  HOBBIES = %w{ photographies sports traveling computer_science tv movies cooking}
  STYLE = %w{ classical fashion bohemian street hipster adventure}
  LIFE_STYLE = %w{ never socially often}
  DEPENDENCIES = %w{ never socially often}
end
