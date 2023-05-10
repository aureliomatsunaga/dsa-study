# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  strs_sorted = strs.sort
  shortest = strs_sorted.shift
  return shortest if shortest.empty?

  finished = false
  idx = 0
  while !finished do
    current = shortest[idx]
    has_common = true
    strs_sorted.each do |str|
      if str[idx] != current
        has_common = false
        break
      end
    end
    finished = has_common || idx < shortest.length
    idx += 1 if has_common
  end
  return "" if idx.zero?

  shortest[0..idx]
end

p longest_common_prefix(["flower","flow","flight"])
p longest_common_prefix(["dog","racecar","car"])
p longest_common_prefix(["","b"])
p longest_common_prefix(["cir","car"])