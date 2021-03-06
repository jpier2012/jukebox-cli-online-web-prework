#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

require 'pry'

my_song_list = {
"Go Go GO" => 'home/jpier2012/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'C:/Users/Jimmers/.atom/.learn-ide/home/jpier2012/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'C:/Users/Jimmers/.atom/.learn-ide/home/jpier2012/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'C:/Users/Jimmers/.atom/.learn-ide/home/jpier2012/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'C:/Users/Jimmers/.atom/.learn-ide/home/jpier2012/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'C:/Users/Jimmers/.atom/.learn-ide/home/jpier2012/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'C:/Users/Jimmers/.atom/.learn-ide/home/jpier2012/jukebox-cli/audio/Emerald-Park/07.mp3'
}

##########
##########

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

##########
##########

def list(my_songs)
  song_list = my_songs.keys
  #binding.pry
end

##########
##########

def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  list(my_songs)
  choice = gets.chomp()
  message = "Invalid input, please try again"
  my_songs.each {|name, filepath|
    if choice.downcase == name.downcase
      message = name
      open filepath
    end
  }
  puts message
end

##########
##########

def exit_jukebox
  puts "Goodbye"
  exit
end

##########
##########

def run(songs)
  help
  input = gets.chomp

  case input
  when input.include?("help")
    help
  when input.include?("list")
    list(songs)
  when input.include?("play")
    play(songs)
  when input.include?("exit")
    exit_jukebox
  else
    help
    puts "Please enter a valid command"
  end
end
