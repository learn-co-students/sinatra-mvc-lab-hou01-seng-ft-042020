class PigLatinizer 
  @@vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]  

  def find_cons_or_conblend(user_input)
    @consonant = ""
    user_input.split('').each do |letter|
      if !@@vowels.include?(letter)
        @consonant += letter
      else
        break
      end
    end
    @consonant
  end

  def transform(word)
    if @@vowels.include?(word[0])
      @pig_latin = word + "way"     
    else 
      @con = find_cons_or_conblend(word)
      @pig_latin = word[@con.chars.length...word.chars.length] + @con + "ay"
    end
    @pig_latin
  end

  def piglatinize(user_input)
    @pl = []
    @arr = user_input.split(" ")
    @arr.each do |word|
      p self.transform(word)
      @pl << self.transform(word)
    end
    @pl.join(" ")
  end

end
