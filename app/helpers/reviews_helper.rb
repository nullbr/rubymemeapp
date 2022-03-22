module ReviewsHelper
    def day_month(review)
        if review.blank?
            "no date"
        else
            review.updated_at.strftime("%d %b %Y")
        end
    end
end
