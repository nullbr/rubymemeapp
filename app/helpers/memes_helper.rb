module MemesHelper
  def date(meme)
    meme.created_at.strftime('%B %d, %Y')
  end

  def day_month(meme)
    meme.blank? ? 'no date' : meme.updated_at.strftime('%d %b %Y')
  end

  def discardpath(meme)
    meme.id.nil? ? root_path : meme_path(meme)
  end
end
