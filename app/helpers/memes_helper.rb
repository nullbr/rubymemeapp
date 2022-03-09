module MemesHelper

    def date(meme)
        meme.created_at.strftime("%B %d, %Y")
    end

    def day_month(meme)
        if meme.blank?
            "no date"
        else
            meme.updated_at.strftime("%d %b %Y")
        end
    end

end
