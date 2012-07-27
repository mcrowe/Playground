class Creative
  include Mongoid::Document
  field :name, type: String
  field :url, type: String

  mount_uploader :image, ImageUploader
end
