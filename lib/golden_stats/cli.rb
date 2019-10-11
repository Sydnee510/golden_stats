class GoldenStats::CLI
  def start 
    input = ""
    while input != "exit"
    puts "Welcome to the Warriors Roster/Stats portal!"
    puts "To see Stephen Currys stats, enter'1'."
    puts "To quit, type 'exit'."
    input = gets.strip
  end 
end
end