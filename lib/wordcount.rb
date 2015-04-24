class String
  #method to count the # of times this string exists in the parameter string
  define_method(:exists_number_of_times_in) do |sentance_to_search|
    word_to_locate = self


    if word_to_locate == sentance_to_search
      return 1
    end


  end
end
