module RubymemesHelper

    def date(meme)
        meme.created_at.strftime("%B %d, %Y")
    end
    
    def show_review(meme)
        if meme.no_review?
            "This meme was not rated yet"
        else
            "Stars: #{meme.stars} -> Review: #{meme.review}"
        end
    end

end
