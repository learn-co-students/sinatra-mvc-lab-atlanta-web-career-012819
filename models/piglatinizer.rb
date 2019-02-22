class PigLatinizer

  @@vowels = ["a", "e", "i", "o", "u"]

  def piglatinize(text)
    if text.split(" ").length == 1
      if @@vowels.include?(text[0].downcase)
        text = text + "w"
      elsif !@@vowels.include?(text[0]) && !@@vowels.include?(text[1]) && !@@vowels.include?(text[2])
        text = text.slice(3..-1) + text.slice(0,3)
      elsif !@@vowels.include?(text[0]) && !@@vowels.include?(text[1])
        text = text.slice(2..-1) + text.slice(0,2)
      else
        text = text.slice(1..-1) + text.slice(0)
      end
      text << "ay"
    else
      sentence = text.split.map do |word|
        if @@vowels.include?(word[0].downcase)
          word = word + "w"
        elsif !@@vowels.include?(word[0]) && !@@vowels.include?(word[1]) && !@@vowels.include?(word[2])
          word = word.slice(3..-1) + word.slice(0,3)
        elsif !@@vowels.include?(word[0]) && !@@vowels.include?(word[1])
          word = word.slice(2..-1) + word.slice(0,2)
        else
          word = word.slice(1..-1) + word.slice(0)
        end
        word << "ay"
      end.join(" ")
    end
  end

end