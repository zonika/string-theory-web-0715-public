require 'pry'
def sort_by_appearance(characters_to_sort, long_text)
  chars = {}
  ch = characters_to_sort.split('')
  long = long_text.split('')
  ch.each do |c|
    chars[c] = 0
  end
  long.each do |letter|
    if ch.include? letter
      chars[letter]+=1
    end
  end
  chars.sort_by{|k,v|v}.reverse.to_h.keys.join
end
