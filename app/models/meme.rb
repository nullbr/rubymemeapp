class Meme < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user
  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations

  validates :name, presence: true, length: { maximum: 15 }
  validates :author,
            format: {
              with: /\A[a-zA-Z]+\z/,
              message: 'only allows letters'
            }
  validates :description, length: { minimum: 25, maximum: 500 }
  validates :image_file_name,
            format: {
              with: /\w+\.(jpg|gif|png)\z/i,
              message: 'must be a JPG, PNG or GIF image'
            }

  # Using lambda ( -> ) to create a callable objects for custom queries
  scope :descorder, -> { order('updated_at desc') }
  scope :ascorder, -> { order('updated_at asc') }
  scope :gif, -> { descorder.where("image_file_name like '%.gif'") }
  scope :png_or_jpg, -> { descorder.where("image_file_name not like '%.gif'") }
  scope :bestmemes, -> {}

  def no_review?
    review.blank? || stars.blank?
  end
end
