module MemesHelper
  def meme_image(meme, sizing = '', classing = '')
    if meme.meme_image.attached?
      image_tag meme.meme_image, style: sizing, class: classing
    else
      image_tag 'rubylogo.png', style: sizing, class: classing
    end
  end

  def meme_image_url(meme)
    if meme.meme_image.attached?
      url_for(meme.meme_image)
    else
      image_url('rubylogo.png')
    end
  end

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
