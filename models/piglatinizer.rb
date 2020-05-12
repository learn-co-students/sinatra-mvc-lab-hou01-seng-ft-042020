class PigLatinizer

    def piglatinize(input)
        input.split(" ").map{|word| piglatinize_word(word)}.join(" ")
    end

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + 'way'
        else
            vowel = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel-1)
            leftovers = word.slice(vowel..word.length)
            leftovers + consonants + 'ay'
        end
    end
end