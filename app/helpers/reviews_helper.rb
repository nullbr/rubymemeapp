module ReviewsHelper
  def day_month(review)
    review.blank? ? 'no date' : review.updated_at.strftime('%d %b %Y')
  end

  def get_meme(object, review)
    if object.class != Meme
      return Meme.find(review.meme_id)
    else
      return object
    end
  end
end
