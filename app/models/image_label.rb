class ImageLabel
  include Mongoid::Document
  field :name, type: String
  field :confidence, type: Float
  field :source, type: String

  belongs_to :image
end
