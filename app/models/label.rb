class Label
  include Mongoid::Document
  field :label_id, type: String
  field :name, type: String

  has_many :image_labels
end
