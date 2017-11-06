def caesar_cipher s, step
  result = ""
  s.each_char do |c|
    result += case c
    when "A".."Z"
      (((c.ord - "A".ord + step)%26) + "A".ord).chr
    when "a".."z"
      (((c.ord - "a".ord + step)%26) + "a".ord).chr
    when /\W/
      c
    else
      "?"
    end
  end
  result
end
