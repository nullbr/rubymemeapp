module MemesHelper

    def date(meme)
        meme.created_at.strftime("%B %d, %Y")
    end

    def day_month(meme)
        # meme.created_at.strftime("%d %M")
    end

end
