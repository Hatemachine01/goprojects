class Project < ApplicationRecord
  belongs_to :user , optional: true
  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: {minimum: 2}
  validates :image, file_size: { less_than: 1.megabytes }
end
