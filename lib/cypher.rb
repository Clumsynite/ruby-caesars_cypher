# frozen_string_literal: true

class Caesars_Cypher

  def cypher(text, num)
    len =  text.length 
    enc = ""
    num = 0 if num.abs == 26 || num%26 == 0
    until num >= -26 || num < 26
      puts num
      num += 26 if num < -26
      num -= 26 if num > 26
    end
    puts num
    len.times do |i|
      if text[i].match(/[a-z]/i)
        code = text[i].ord
        shift = code + num
        if shift <= 65
          shift = 90 - (65 - shift - 1)
        elsif shift < 97 && shift >= 90
          if code >= 65 && code <= 90
            shift = 65 - (90 - shift + 1)
          elsif code >= 97 && code <= 122
            shift = 122 - (97 - shift - 1)
          end
        elsif shift > 122 && shift <= 97
          shift = 122 - (97 - shift - 1)
        elsif shift > 122
          shift = 97 - (122 - shift + 1)
        end
        enc += shift.chr
      else
        enc += text[i]
      end
    end
    enc
  end
  
end

cy = Caesars_Cypher.new
puts cy.cypher("a",-26)
