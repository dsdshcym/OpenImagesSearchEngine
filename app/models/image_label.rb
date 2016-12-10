class ImageLabel
  include Mongoid::Document
  field :confidence, type: Float
  field :source, type: String

  belongs_to :image
  belongs_to :label
end
