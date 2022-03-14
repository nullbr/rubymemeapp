class Meme < ApplicationRecord

    validates :name, :author, presence: true && format: { with: /\A[a-zA-Z]+\z/,
        message: "only allows letters" }
    validates :description, length: { minimum: 25, maximum: 500 }
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
