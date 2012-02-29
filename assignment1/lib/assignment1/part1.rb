def palindrome?(string)
  return string.upcase!.gsub!(/[\.\?!@#$&,*'-]? ?/,'').gsub!(/\b ?/,'').eql?(string.reverse)
end

def count_words(string)
  retval = Hash[]
  string.downcase.gsub!(/[!@#$&,*-]?/,'').split.collect{ |word| retval[word] = retval[word].to_i + 1}
  return retval
end
