def word_count(string)
  retval = Hash[]
  string.downcase.gsub!(/--?|,?/,'').split.collect{ |word| retval[word] = retval[word].to_i + 1}
  return retval
end
