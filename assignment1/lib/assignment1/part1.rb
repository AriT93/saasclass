def palindrome?(string)
  return string.downcase!.gsub!(/\b |, |[-]+ ?|[!']/,'').eql?(string.reverse)
end

def word_count(string)
  retval = Hash[]
  string.downcase.gsub!(/--?|,?/,'').split.collect{ |word| retval[word] = retval[word].to_i + 1}
  return retval
end
