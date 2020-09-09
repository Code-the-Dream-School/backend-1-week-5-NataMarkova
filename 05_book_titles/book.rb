class Book
    # all methods have an access to the var title
    def title
        @title
    end

    def title=(title)
        # %w(foo bar) is a shortcut for ["foo", "bar"]
        lower_array = ['a', 'and', 'an', 'the', 'on', 'of', 'in']
        # map returns a new array with the results
        # map! mutates the original array
        new_title_array = title.split().map! do |word|
            if !lower_array.include?(word)
                word.capitalize
            else
                word
            end
        end
        new_title_array[0] = new_title_array[0].capitalize
        @title = new_title_array.join(' ')
    end
end
