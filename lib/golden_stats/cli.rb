#module GoldenStats
class GoldenStats::CLI
  
  def start 
     puts "Welcome to the Warrior's Stats portal!"
     puts
    # puts "Here is the roster for the preason #{players}"
     GoldenStats::Scraper.scrape
     puts "Please enter a number for you favorite player:"
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
      
      input = ""
      #choice 
      puts "testing-1"
      while input != "exit"
        input = gets.chomp
        
        if (1..30).include?(input.to_i)
          @chosen_player = GoldenStats::Player.all[input.to_i - 1]
          puts "#{@chosen_player.name}"
      #     binding.pry
       # else input = "exit"
          
         end
       end
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