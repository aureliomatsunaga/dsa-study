def hash
  {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }
end

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  chars = s.chars
  length = chars.length
  return hash[chars[0]] if length == 1

  result = 0
  idx = 0
  while idx < length do
    if idx + 1 < length && hash[chars[idx]] < hash[chars[idx + 1]]
      result += hash[chars[idx + 1]] - hash[chars[idx]]
      idx += 1
    else
      result += hash[chars[idx]]
    end

    idx += 1
  end
  result
end

p roman_to_int("III")
p roman_to_int("LVIII")
p roman_to_int("MCMXCIV")