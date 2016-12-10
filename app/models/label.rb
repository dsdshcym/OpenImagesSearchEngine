class Label
  include Mongoid::Document
  field :_id, type: String, default: -> { label_id }
  field :label_id, type: String
  field :name, type: String

  has_many :image_labels
end
