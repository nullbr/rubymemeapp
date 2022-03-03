class Meme < ApplicationRecord

    def no_review?
        review.blank? || stars.blank?
    end

end
