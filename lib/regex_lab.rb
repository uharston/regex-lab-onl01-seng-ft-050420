require 'pry'
#how to return a boolean?
def starts_with_a_vowel?(word)
word.match? (/\b[aeiou]/i)
  end
#how to return an array of words? .scan
def words_starting_with_un_and_ending_with_ing(text)
 result = text.scan(/\bun\w+/) + text.scan(/ing\b\w+/)
 result.uniq
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
     text.match?(/^[A-Z]/) && text.match?(/[.?!]$/)
end
#number = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]
#how to iterate over an array => array with Regex -.grep or .scan w/ .split
#Check if each phone number in the array is valid
#return true or false for each in an array
#1. Iterate through phone array
#2.Check if element has 10 numbers
def valid_phone_number?(phone)
  # phone.each do |number|
  #   number.
  if phone.match(/([0-9] ?){10}/) || phone.match(/(\([0-9]{3}\)([0-9]{3}-[0-9]{4})\b)/) || phone.match(/\b([0-9]{7})\b/)
   true
 else
   false
 end
end
