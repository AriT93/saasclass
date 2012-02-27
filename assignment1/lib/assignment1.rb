def palindrome?(string)
  return string.downcase!.gsub!(/\b |, |[-]+ ?|[!']/,'').eql?(string.reverse)
end
