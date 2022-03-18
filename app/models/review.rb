class Review < ApplicationRecord
  belongs_to :meme

  validates :username, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :review, length: { minimum: 25, maximum: 500 }
  validates :stars, numericality: { 
    only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 
  }

end
