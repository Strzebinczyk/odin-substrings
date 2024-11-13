def substrings(string, dictionary) 
  result = Hash.new
  for i in 0..dictionary.length-1
    substring = dictionary[i]
    count = string.scan(/(?=#{substring})/).count
    if (count > 0)
      result[substring] = count
    end
  end
  result
end