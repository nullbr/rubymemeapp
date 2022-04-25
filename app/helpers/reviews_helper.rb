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

  def get_user(review)
    User.find(review.user_id)
  end

  def checked_stars(meme)
    if meme.reviews.size.zero?
      0
    else
      avg_stars(meme).to_i
    end
  end

  def unchecked_stars(meme)
    if meme.reviews.size.zero?
      0
    else
      5 - avg_stars(meme).to_i
    end
  end

  def user_not_reviewed?(meme)
    if current_user.reviews.where(meme_id: meme.id).present?
      false
    else
      true
    end
  end
end
