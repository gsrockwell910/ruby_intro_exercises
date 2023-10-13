#define caesar cipher method
def caesar_cipher(string, shift_factor = 0)

  #create array of lowercase letters, array of uppercase letters, and array to hold all 
  all_letters = [[*?a..?z], [*?A..?Z]]

  shifted_string = string.split("").map do |character|
    #if not in either nested array return character
    if !(all_letters[0] + all_letters[1]).include?(character)
      character = character
    elsif all_letters[1].include?(character)#if letter is uppercase 
      index_of_character = (all_letters[1].index(character) + shift_factor) % 26
      all_letters[1][index_of_character]
    else #character must be lower case
      index_of_character = (all_letters[0].index(character) + shift_factor) % 26
      all_letters[0][index_of_character]
    end
  end
  puts shifted_string.join
end

print "Please enter a message to be encrypted: "
answer = gets.chomp!

print "Please enter a number (for no reason): "
magic_number = gets.chomp!.to_i

puts caesar_cipher(answer, magic_number)