puts "Text plz thx: "
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each { |words| frequencies[words] += 1 }
frequencies = frequencies.sort_by do |words, count|
  count
end
frequencies.reverse!

frequencies.each do |word, count|
  puts word + " " + count.to_s
end