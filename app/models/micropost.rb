class Micropost < ApplicationRecord
  belongs_to :user
  belongs_to :district
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true
  validates :title, presence: true
  validates :district_id, presence: true
  validate  :picture_size

  has_many :comments
  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end