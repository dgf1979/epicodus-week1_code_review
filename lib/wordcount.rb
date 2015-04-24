class String
  #method to count the # of times this string exists in the parameter string
  define_method(:exists_number_of_times_in) do |sentance_to_search|
    word_to_locate = self.downcase()
    words_to_compare = sentance_to_search.downcase().split(" ")
    matches = 0

    #loop array of words to compare and increment matches on positive hits
    words_to_compare.each do |word_to_compare|
      if word_to_compare.include?(word_to_locate)
        matches += 1
      end
    end

    # if word_to_locate == sentance_to_search
    #   return 1
    # end

    return matches
  end
end
