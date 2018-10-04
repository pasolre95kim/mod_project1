class Groomer < ActiveRecord::Base
  has_many :appointments
  has_many :dogs, through: :appointments
  @@all = nil

  def self.ask_groomer
    puts "Please pick a groomer"
  end

  def self.picture
  puts "

         /^-^\\    WOOF
        / o o \\
       /   Y   \\
       V\\  v  /V
         / - \\
        /    ||
  ( ===/___)_||
".blue.blink
  end

  def self.picture_two
    puts "
     /^-----^\\   WOOF!
     V  o o  V
      |  Y  |
       \\ Q /
       / - \\
      ||    \\
      ||_(___\==== )
    ".cyan.blink
  end

  def self.all_groomers
    Groomer.all.each do |groomer|
      puts "#{groomer.id}. #{groomer.name}"
    end
  end

  def self.user_input
    gets.chomp
  end

  def self.groomers(arg)
    if arg.to_i >=1 && arg.to_i <=4
    @@groomer = Groomer.find(arg)
    puts "You have picked #{groomer.name} on #{groomer.location}. That's a great choice!"
    puts "Would you like to see the available appointment time? Press y/n"
      case groomer_input = gets.chomp
      when "y"
        Appointment.runner
      when "n"
        runner
      end
    else
      runner_two
    end
  end

  def self.groomer
    @@groomer
  end

  def self.groomer=(groomer)
    @@groomer = groomer
  end

  def self.emoji
    puts "
           _ _
       _(,/ \\ \\____________
       |`. \\_@_@   `.     ,'
       |\ \ .          `-,-'
       || |  `-.____,-'
       || /  /
       |/ |  |
 `..      /   \\
   \\\     /    |
   ||   |      \\
    \\   /-.    |
    || /  /_   |
    \\(______)-'_)
    ".red

  end

  def self.runner_two
    puts " "
    emoji
    puts "Invalid input. Please enter between 1-4."
    puts "Enter Here:"
    groomers(user_input)
  end

  def self.runner
    picture
    picture_two
    ask_groomer
    all_groomers
    groomers(user_input)
  end


#   /^-^\\        /^-----^\\
#  / o o \\       V  o o  V
# /   Y   \\       |  Y  |
# V\\  v  /V        \\ Q /
#   / - \\          / - \\
#  /    ||        ||    \\
# ( ===/___)_||        ||_(___\==== )




end
