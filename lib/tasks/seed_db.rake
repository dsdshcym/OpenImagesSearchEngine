require 'csv'

namespace :seed_db do
  desc 'Load ImageLabels from a csv file'
  task load_image_labels: :environment do
    load_csv(true) do |row|
      h = row.to_hash.transform_keys(&:underscore)
      h['name'] = Label.find(h.delete('label_name')).name
      image = Image.find(h.delete('image_id'))
      image.image_labels << ImageLabel.new(h)
      image.save!
    end
  end

  desc 'Load Images from a csv file'
  task load_images: :environment do
    load_csv(true) do |row|
      h = row.to_hash.transform_keys(&:underscore)
      h['thumbnail_300k_url'] = h.delete('thumbnail300_kurl')
      Image.create!(h)
    end
  end

  desc 'Load Labels from a csv file'
  task load_labels: :environment do
    load_csv(%w(label_id name)) do |row|
      Label.create!(row.to_hash.transform_keys(&:underscore))
    end
  end

  private

  def csv_file
    ARGV.each { |a| task a.to_sym }
    path = ARGV[1]
    @csv_file ||= File.open(path, 'r')
  end

  def load_csv(headers)
    csv = CSV.new(csv_file, headers: headers)
    csv.each { |row| yield row }
  end
end
