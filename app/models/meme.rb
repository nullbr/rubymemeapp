class Meme < ApplicationRecord

    def self.descorder
        order("updated_at desc")
    end
    
    def no_review?
        review.blank? || stars.blank?
    end

end
