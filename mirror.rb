#! usr/bin/env ruby

def mirror(char)
  case char
  when 'a'..'z'
    (219 - char.ord).chr
  when 'A'..'Z'
    (155 - char.ord).chr
  end
end

def generate_code(number)
   charset = Array('A'..'Z')
   Array.new(number) { charset.sample }.join
end

def mirror_word(word)
  word.chars.map do |char|
    mirror(char)
  end.join
end
