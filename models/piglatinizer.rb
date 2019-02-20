class PigLatinizer
  def piglatinize(str)
    words = str.split(" ")

    words.collect do |word|
      if 'aeiou'.include? word[0].downcase
        word + "way"
      else
        while 'bcdfghjklmnpqrstvwxyz'.include? word[0].downcase
          word = word[1..-1] + word[0]
        end
        word + "ay"
      end
    end.join(" ")
  end
end
