#module GoldenStats
class GoldenStats::CLI
  def start 
   # puts "hello world!"
  #   input = ""
  #   while input != "exit"
     puts "Welcome to the Warrior's Stats portal!"
     puts
    # puts "Here is the roster for the preason #{players}"
     #puts 
     players = ["Kavion Pippen", "Stephen Curry", "Draymond Green", "Glenn Robinson III", "Andrew Harrison", "D'Angelo Russell", "Marquese Chriss", "Damion Lee", "Alfonzo McKinnie", "Jacob Evans", "Omari Spellman", "Ky Bowman", "Juan Toscano-Anderson", "Eric Paschall", "Jordan Poole"]
     
     players.each_with_index do |name, index|
 # binding.pry
 puts "#{index + 1}" "."  "#{name}"
 end
 puts
 puts "Enter a number to see Playersinfo:"
     #puts "Please enter your faviorite player's name in this format 'first_last':"
     name = gets.chomp
     index = gets.chomp
     puts "You entered player \"#{name}\" "
     scraper = GoldenStats::Scraper.new(name)
     puts "here is the player's stats:"
     puts scraper.players
   
  #   puts "To quit, type 'exit'."
  #   input = gets.strip
  # end 
end
end