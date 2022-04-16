class User < ApplicationRecord
  has_secure_password
  has_many :reviews

  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },
                    uniqueness: { case_sensitive: false }

  AVATAR_OPTIONS = ["avatar1.png", "avatar2.png", "avatar3.png", "avatar4.png", "avatar5.png"]

  validates :profile_image, inclusion: { in: AVATAR_OPTIONS }
end
