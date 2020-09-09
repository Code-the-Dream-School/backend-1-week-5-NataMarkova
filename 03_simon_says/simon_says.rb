def echo(hello)
    hello
end

def shout(*hello)
    cap_letters = hello.map(&:upcase)
    hello = cap_letters.join(' ')
end

def repeat(hello, n = 2)
    ((hello + " ") * n).strip
end

def start_of_word(hello, n)
    letter = n - 1
    hello[0..letter]
end

def first_word(hello)
    hello.split.first
end

def titleize(words)
    lower_array = ['a', 'and', 'an', 'in', 'the', 'on', 'of', 'over']
    new_title = words.split().map do |word|
        if !lower_array.include?(word)
            word.capitalize
        else
            word
        end
    end
    new_title[0] = new_title[0].capitalize
    words = new_title.join(' ')


end
