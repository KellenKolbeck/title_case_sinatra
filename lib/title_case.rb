class String
  define_method(:title_case) do
    prepositions = ["the", "and", "or", "of", "to", "from","a", "but"]
    split_title = self.downcase().split()
    split_title.each_with_index() do |word, index|
      letters = word.split("")
      if prepositions.include?(word) && index != 0
        word.downcase!()
      elsif letters[0]=="m" && letters[1]=="c"
        letters[0].capitalize!()
        letters[2].capitalize!()
        word = letters.join("")
        split_title[index]=word
      else
        word.capitalize!()
      end
    end
    split_title.join(" ")
  end
end
