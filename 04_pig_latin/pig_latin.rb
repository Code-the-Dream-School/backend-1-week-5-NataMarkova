def translate(str)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    single_phoneme = "qu"
    # separate each word in a sentence
    word = str.split
    word.each do |each_word|
        if consonants.include?(each_word[0]) && single_phoneme.include?(each_word[1..2]) 
            each_word[3..-1] + each_word[0..2] + 'ay'
        elsif single_phoneme.include?(each_word[0..1])
            each_word[2..-1] + each_word[0..1] + 'ay'
        elsif consonants.include?(each_word[0]) && single_phoneme.include?(each_word[1..2]) 
            each_word[2..-1] + each_word[0..1] + 'ay'
        elsif vowels.include?(each_word[0])
            each_word + 'ay'
        elsif consonants.include?(each_word[0]) && consonants.include?(each_word[1]) && consonants.include?(each_word[2])
            each_word[3..-1] + each_word[0..2] + 'ay'
        elsif consonants.include?(each_word[0]) && consonants.include?(each_word[1])
            each_word[2..-1] + each_word[0..1] + 'ay'
        elsif consonants.include?(each_word[0])
            each_word[1..-1] + each_word[0] + 'ay'
        else
            each_word
        end
    end
end