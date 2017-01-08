movies = {
    speed: 4,
    }
puts "Whats would you like to do.. add - update - display - delete.."
choice = gets.chomp
case choice
when "add"
  puts "what movie would you like to add?"
  title = gets.chomp
 if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What movie do you want to update?"
title = gets.chomp
if movies[title.to_sym].nil?
puts "The movie is not on this list."
else 
puts "What is the new rating?"
movies[title.to_sym] = rating.to_i
rating = gets.chomp
puts "#{title.to_sym} has been updated with a rating of #{rating}."
end
when "display"
  movies.each do |movies, rating|
      puts "#{movies}: #{rating}"
  end
when "delete"
  puts "What movie would you like to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
      puts "Error no movie in here"
  else
      movies.delete(title)
      puts "movie deleted"
end
end
  