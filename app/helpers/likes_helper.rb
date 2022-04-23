module LikesHelper
  def like_or_unlike_button(meme, like, likers)
    if like
      button_to pluralize(likers.size, 'Like'), meme_like_path(meme, like), method: :delete, class: 'px-btn theme'
    else
      button_to pluralize(likers.size, 'Like').to_s, meme_likes_path(meme), class: 'px-btn theme-t'
    end
  end
end
