class PigLatinizer

    def piglatinize(str)
        str.split(" ").map { |word| translate(word)}.join(" ")


    end

    def translate(word)
        if word[0].match(/[AEIOUaeiou]/)
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1) 
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"

        end

    end


end