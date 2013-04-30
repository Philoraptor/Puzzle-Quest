# Puzzle Quest for Cavern competition by Philosopher
# April 29, 2013 -- Written for Deepworld, a game by Bytebin
# http://forums.deepworldgame.com/discussion/4239/building-competition-3-cave-chronicles-now-through-may-3rd
#
# This puzzle can be freely modified for your use.  Remember to give credit where applicable.

def prompt
  print "> "
end

#This is where the player reads the Note upon discovering the Bunker
def start
  puts <<MESSAGE
  You have stumbled upon an abandoned building overtaken by
  terrapi and automata.  They are guarding a chest nearby that
  will open by uttering a word.  Do you want to solve the puzzle?
MESSAGE
  
  prompt;  next_move=gets.chomp
  
  #There are two options. You can start the quest or flee.
  if next_move.downcase.include? "yes"
   puzzle
   elsif #flee
     angry_brain
  end
      
end

def finish(finish)
  sleep 2 #seconds
  puts "#{finish} - END OF QUEST"
  exit
end

def puzzle
  puts <<MESSAGES
  Great! The next message reads:
  "There are two trap doors to open, so you need to
  drink this wine and tell these creatures to be----"
  You are unable to read the rest of this message
  for it has been destroyed by time, can you figure
  out the last word?
MESSAGES
  
  sleep 2 #second
  	
    puts "So, you drank the wine, but what was the word?"
	
	comeback	

end

def angry_brain
	puts "You encounter the brain who sensed your fear, \nHis tentacles are eager to smother you to death,\nso you better fight or flee!"
	finish("You dropped the wine bottle.")
end

def chest(generated_number)
  # The loot algorithm for opening the chest goes here.
  puts "Success! You have opened the chest."
  
  generated_number=1 + rand(12)
  if generated_number <= 4
    finish("You have received a #{generated_number} through much torment. Good job!")
  elsif #bad loot 
    finish("You have received a #{generated_number}, better luck next time!")
  end
end

def drink_wine()
	wine = 1
	
	# I have intentionally left this out of the entire script for the devs.
	# If necessary, Put in the algorithm for drinking the wine that was placed below the note here.
	# Also check if the bottle was mined, then remove the wine bottle from player's inventory if angry_brain script runs.
	# Plus, if the player drinks the wine bottle before fleeing, the bottle's effects could become poison. :)
	# I just learned to write Ruby, so this is probably the wrong way to do it.
end

def comeback
		prompt; next_move=gets.chomp
 
		if next_move.downcase.include? "begone" # & wine = 1
		sleep 1 #seconds
		puts "The trapdoors have opened!"
		chest("Find the chest")
		elsif
		sleep 1 #seconds
		try_again
		end
end

def try_again
	puts "Huh? That didn't work. Maybe you should drink\nthe wine and try again.."
	comeback
end

start()




