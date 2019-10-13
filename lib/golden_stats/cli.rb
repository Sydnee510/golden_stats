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
      
      while input != "exit, players"
        input = gets.chomp
        
        if (1..players.size).include?(input.to_i)
          @chosen_player = GoldenStats::Player.all[input.to_i - 1]
          puts
          puts "You entered player #{@chosen_player.name}"
          puts "His jersey number is #{@chosen_player.pl_num}"
          puts "His position is a #{@chosen_player.pl_pos}"
          puts "For #{@chosen_player.name}'s game statistics go to:"
          puts "#{@chosen_player.url}"
          puts
          puts "Type 'players' to view the roster again:"
          puts "Or type the number of a player:"
          puts
          puts "You can type 'exit' at any time to leave the program"
          
        elsif input.downcase == "players"
          command
        elsif input.downcase == "exit"
           puts
           puts "I hope you are satisfied with the results."
           break
        else 
          puts "Sorry! Please enter a specific number from the roster!"
          command
         end
       end
       puts "See you later!"
       exit
    end 
end
