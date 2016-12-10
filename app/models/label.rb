class Label
  include Mongoid::Document
  field :_id, type: String, default: -> { label_id }
  field :label_id, type: String
  field :name, type: String

  has_many :image_labels

  def images
    Image.in(id: image_labels.pluck(:image_id))
  end
end
