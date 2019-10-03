def signup
    puts "Define password please"
    require 'io/console'
    password = STDIN.noecho(&:gets).chomp
    return password
end

def login (right_one)
    i = 1
    puts "Enter password, you will see something great!!!"
    user_input = gets.chomp
    while user_input != right_one && i< 3
        puts "Try again fastly, you only have #{3-i} attempts left"
        user_input = gets.chomp
        i += 1
    end

    if user_input != right_one 
        puts "FATAL ERROR, FBI COMIN TO YOU, You re SCREWED"
        return false
    else return true
    end
    #puts "Well done Bro"
end

def welcome_screen
    puts "Welcome in the dark side of THP, secret zone."
end

def perform
    password = signup
    if login(password)
       welcome_screen
    end 
end
perform