class Review < ApplicationRecord
  belongs_to :meme
  belongs_to :user

  STARS_OPTIONS = [1, 2, 3, 4, 5]

  validates :username, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :review, length: { minimum: 25, maximum: 500 }

  validates :stars, inclusion: { in: STARS_OPTIONS }
end
