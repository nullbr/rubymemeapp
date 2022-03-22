class Review < ApplicationRecord
  belongs_to :meme

  validates :username, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :review, length: { minimum: 25, maximum: 500 }
  
  STARS_OPTIONS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  
  validates :stars, inclusion: { in: STARS_OPTIONS }

end
