def combine_anagrams(words)
  retval = { }
  words.collect { |word|
    if retval.has_key?(word.downcase.split(//).sort.join)
      retval[word.downcase.split(//).sort.join].push(word)
    else
      retval[word.downcase.split(//).sort.join] = [word]
    end
  }
  retval.values
end
