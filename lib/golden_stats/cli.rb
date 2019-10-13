#module GoldenStats
class GoldenStats::CLI
  
  def start 
     puts "Welcome to the Warrior's Stats portal!"
     puts
    # puts "Here is the roster for the preason #{players}"
     GoldenStats::Scraper.scrape
     puts "Please enter a number for you favorite player"
     puts
     players
     command
    end
    
    def players
      GoldenStats::Player.all.each.with_index(1) do |object, index|
       puts "#{index}. #{object.name}"
    end
  end
  
    def command
      
      puts "Type the number of your favorite player here!:"
      puts 
      puts "You can type exit at anytime to leave the program"
      input = ""
      
      #choice 
      while input != "exit"
        input = gets.chomp
        
        if (1..30).include?(input.to_i)
          @chosen_player = GoldenStats::Player.all[input.to_i - 1]
          puts "You entered player #{@chosen_player.name}"
          puts "His jersey number is #{@chosen_player.pl_num}"
          puts "His position is a #{@chosen_player.pl_pos}"
      #     binding.pry
        elsif input.downcase == "exit"
          puts "I hope you are satisfied with the results."
          break
        else 
          puts "Sorry! Please enter a specific number!"
          command
          
         end
       end
       puts "See you later!"
       exit
    end 
end
#     puts "You entered player \"#{name}\" "
#     scraper = GoldenStats::Scraper.new(name)
#     puts "here is the player's stats:"
#     puts scraper.players
   
#   #   puts "To quit, type 'exit'."
#   #   input = gets.strip
#   # end 
# end
# end