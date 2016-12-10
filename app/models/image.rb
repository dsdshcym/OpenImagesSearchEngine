class Image
  include Mongoid::Document
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
end
