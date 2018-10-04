require 'colorize'
class Dog < ActiveRecord::Base
  has_many :appointments
  has_many :groomers, through: :appointments
  @@all = nil

  def self.welcome
    puts "
.-.-. .-.-. .-.-. .-.-. .-.-. .-.-. .-.-.
'. w )'. e )'. l )'. c )'. o )'. m )'. e )
  ).'   ).'   ).'   ).'   ).'   ).'   ).'
                                                ".red.blink
  end

  def self.all_name
    Dog.all.each do |dog|
      puts "#{dog.id}. #{dog.name} "
    end
  end

  def self.get_user_answer
    puts "What's your dog's name? Please enter between 1-10."
    puts "***************************************************"
    self.all_name
  end

  def self.user_input
    gets.chomp
  end

  def self.dogs(arg)
    if arg.to_i >= 1 && arg.to_i <= 10
    @@dog = Dog.find(arg)
    puts " "
    puts "Hello #{dog.name}. You are a beautiful #{dog.age} year old #{dog.breed}"
    puts "Is this correct? Press y/n"
    case toby_input = gets.chomp
      when "y"
      Groomer.runner
      when "n"
        runner
      end
    else
      runner_two
    end
  end

  def self.dog
    @@dog
  end

  def self.dog=(dog)
    @@dog = dog
  end


  def self.emoji
    puts "
           _ _                NO NO
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
    ".light_blue
  end


  def self.runner_two
    puts " "
    emoji
    puts "Let's try that again. I said enter between 1-10"
    puts "Enter Here:"
    dogs(user_input)
  end

  def self.runner
    welcome
    get_user_answer
    puts "Enter Here:"
    dogs(user_input)
  end
end
