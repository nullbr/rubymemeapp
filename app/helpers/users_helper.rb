module UsersHelper
  def pro_or_memeber(user)
    user.admin_status ? 'PRO' : 'MEMEBER'
  end

  def which_page
    case params[:page]
    when 'reviews'
      'reviews'
    when 'memes'
      'memes'
    when 'likes'
      'likes'
    else
      'profile'
    end
  end
end
