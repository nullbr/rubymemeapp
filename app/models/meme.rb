class Meme < ApplicationRecord
  before_save :set_slug, :set_image_content_type

  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user
  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations

  has_one_attached :meme_image

  validate :acceptable_image

  validates :meme_image, presence: true
  validates :name, presence: true, uniqueness: true, length: { maximum: 25 }
  validates :description, length: { minimum: 25, maximum: 500 }

  # Using lambda ( -> ) to create a callable objects for custom queries
  scope :descorder, -> { order('updated_at desc') }
  scope :ascorder, -> { order('updated_at asc') }
  scope :gif, -> { descorder.where("image_content_type like 'image/gif'") }
  scope :png_or_jpg, -> { descorder.where("image_content_type not like 'image/gif'") }
  scope :bestmemes, -> {}

  def acceptable_image
    return unless meme_image.attached?

    errors.add(:meme_image, 'is too big') unless meme_image.byte_size <= 2.megabyte

    acceptable_types = ["image/jpeg", "image/png", "image/gif"]
    errors.add(:meme_image, 'must be JPEG, PNG or GIF') unless acceptable_types.include?(meme_image.content_type)
  end
  
  def no_review?
    review.blank? || stars.blank?
  end

  def to_param
    slug
  end

  private

  def set_slug
    self.slug = name.parameterize
  end

  def set_image_content_type
    self.image_content_type = meme_image.content_type
  end
end
