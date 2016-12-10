class ImageLabel
  include Mongoid::Document
  field :image_id, type: String
  field :label_id, type: String
  field :confidence, type: String
  field :source, type: String
end
