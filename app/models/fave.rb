class Fave < ApplicationRecord
  belongs_to :meme
  belongs_to :user
end
