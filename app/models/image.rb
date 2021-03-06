class Image
  include Mongoid::Document
  include Mongoid::Search

  field :_id, type: String, default: -> { image_id }
  field :image_id, type: String
  field :subset, type: String
  field :original_url, type: String
  field :original_landing_url, type: String
  field :license, type: String
  field :author_profile_url, type: String
  field :author, type: String
  field :title, type: String
  field :original_size, type: String
  field :original_md5, type: String
  field :thumbnail_300k_url, type: String

  has_many :image_labels

  search_in image_labels: :name

  def labels
    Label.in(id: image_labels.pluck(:label_id))
  end

  def label_names
    labels.pluck(:name)
  end
end
