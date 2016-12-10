json.extract! image_label, :id, :image_id, :label_id, :confidence, :source, :created_at, :updated_at
json.url image_label_url(image_label, format: :json)