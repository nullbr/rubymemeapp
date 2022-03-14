class Meme < ApplicationRecord

    validates :name, :author, presence: true
    validates :description, length: { minimum: 25 }
    validates :image_file_name, format: {
        with: /\w+\.(jpg|gif|png)\z/i,
        message: "must be a JPG, PNG or GIF image"
    }
    
    def self.descorder
        order("updated_at desc")
    end
    
    def no_review?
        review.blank? || stars.blank?
    end

end
