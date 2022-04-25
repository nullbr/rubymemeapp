module MemesHelper
  def date(meme)
    meme.created_at.strftime('%B %d, %Y')
  end

  def day_month(meme)
    if meme.blank?
      'no date'
    else
      meme.updated_at.strftime('%d %b %Y')
    end
  end

  def discardpath(meme)
    if meme.id.nil?
      root_path
    else
      meme_path(meme)
    end
  end

	def avg_stars(meme)
    sum = 0
    meme.reviews.each do |review|
      sum += review.stars.to_i
    end

    sum / meme.reviews.size
	end
end
