require 'pry'

def songs
  songs = [
    "Phoenix - 1901",
    "Tokyo Police Club - Wait Up",
    "Sufjan Stevens - Too Much",
    "The Naked and the Famous - Young Blood",
    "(Far From) Home - Tiga",
    "The Cults - Abducted",
    "Phoenix - Consolation Prizes",
    "Harry Chapin - Cats in the Cradle",
    "Amos Lee - Keep It Loose, Keep It Tight"
  ]
end
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

def list(songs)
  songs.each_with_index {|value, index|
    puts "#{index + 1}. #{value}"
  }
end

##########
##########


def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp()
  message = "Invalid input, please try again"
  songs.each_with_index {|song, index|
    if choice.to_i == (index + 1) || choice == song
      message = song
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
    #binding.pry
end
