movies = {
  Begin_Again: 10,
  Begin_After: 0,
}

puts "what's your favourite film?: "
choice = gets.chomp()
case choice
when "add"
  puts "What movie would you like to add?: "
  title = gets.chomp().to_sym
  if movies[title] == nil
    puts "What would you rate the film #{title}?: "
    rating = gets.chomp().to_i
    movies [title] = rating
  else
    puts "This movie is already in the hash"
  end
when "update"
  puts "What movie would you like to update?: "
  title = gets.chomp().to_sym
  if movies[title] == nil
    puts "That film is not in the hash! Please add it first using the 'add' command"
  else
    puts "What would you rate the film #{title}?: "
    rating = gets.chomp().to_i
    movies [title] = rating
  end
when "display"
  movies.each do |title, rating|
    puts "#{title}: #{rating}"
  end
when "delete"
  puts "What movie would you like to remove?: "
  title = gets.chomp.to_sym
  if movies[title] == nil
    puts "That film is not in the hash! Please add it first using the 'add' command"
  else
    movies.delete(title.to_sym)
  end
else
  puts "Error!"
end