class Groomer < ActiveRecord::Base
  has_many :appointments
  has_many :dogs, through: :appointments

  def self.ask_groomer
    puts "Please pick a groomer"
  end

  def self.picture
  puts "

       /^-^\         /^-----^\
      / o o \        V  o o  V
     /   Y   \        |  Y  |
     V \ v / V         \ Q /
       / - \           / - \
      /    |           |    \
(    /     |           |     \     )
 ===/___) ||           || (___\====


"
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
    groomer = Groomer.find(arg)
    puts "You have picked #{groomer.name} on #{groomer.location}. That's a great choice!!"
    puts "Would you like to see the available appointment time? Press y/n"
      case groomer_input = gets.chomp
      when "y"
        Appointment.runner
      when "n"
        runner
    end
  end

  def self.runner
    picture
    ask_groomer
    all_groomers
    groomers(user_input)
  end

end
