module ReviewsHelper
  def day_month(review)
    review.blank? ? 'no date' : review.updated_at.strftime('%d %b %Y')
  end
end
