puts 'Text here: '
text = gets.chomp

puts 'Redact: '
redact = gets.chomp

words = text.split(" ")
words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end