require 'pry'
class GoldenStats::CLI
  
  def start 
     puts "Welcome to the Warrior's Stats portal!".colorize(:green)
     puts
     GoldenStats::Scraper.scrape
     puts "Please enter a number for you favorite player!".colorize(:magenta)
     puts
     players
     command
  end
    
  def players
    arr = GoldenStats::Player.all.uniq { |player| player.name }
    arr.each.with_index(1) do |object, index|
    puts "#{index}. #{object.name}".colorize(:blue)
    end
  end
  
  def command
    puts
    puts "Type the number of your favorite player here!:".colorize(:magenta)
    puts 
    puts "You can type exit at anytime to leave the program".colorize(:red)
    input = ""
    while input != "exit"
      input = gets.chomp
      #binding.pry
        
      if (1..17).include?(input.to_i)
        @chosen_player = GoldenStats::Player.all[input.to_i - 1]
        puts
        puts "You entered player #{@chosen_player.name}".colorize(:yellow)
        puts "His jersey number is #{@chosen_player.pl_num}".colorize(:yellow)
        puts "His position is a #{@chosen_player.pl_pos}".colorize(:yellow)
        puts "For #{@chosen_player.name}'s game statistics go to:".colorize(:yellow)
        puts "#{@chosen_player.url}".colorize(:cyan)
        puts
        puts "Type 'p' to view the roster again:".colorize(:magenta)
        puts "Or type the number of another player:".colorize(:magenta)
        puts
        puts "You can type 'exit' at any time to leave the program".colorize(:red)
        elsif input.downcase == "p"
          players
          command
        elsif input.downcase == "exit"
           puts
           puts "I hope you are satisfied with the results.".colorize(:green)
           break
        else
          puts
          puts "Sorry! Please enter a specific number from the roster!".colorize(:red)
          players
          command
        end
      end
       puts "See you later!".colorize(:green)
       exit
    end 
end
