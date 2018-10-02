class Dog < ActiveRecord::Base
  has_many :appointments
  has_many :groomers, through: :appointments

  def self.welcome
    puts "Hello & Welcome!"
  end

  def self.all_name
    count = 0
    Dog.all.each do |dog|
      count+= 1
      puts "#{count}. #{dog.name} "
    end
  end

  def self.get_user_answer
    puts "What's your dog's name?"
    self.all_name
    user_input
  end

  def self.user_input
    gets.chomp
  end

  def menu
    case user_input
     when "1"
       toby

     when "2"
       bailey

     when "3"
       diesel

     when "4"
       chanel

     when "5"
       louie

     when "6"
       henry

     when "7"
       jenn

     when "8"
       max

     when "9"
      brownie

     when "10"
      mandy
   end
  end

  def toby
    puts "Hello Toby. You are a beautiful Goldendoodle and 1 year old"
    puts "Is this correct? Press y/n"
    case toby_input = gets.chomp
      when "y"
        Groomer.ask_groomer
      when "n"
        get_user_answer
    end
  end

  def self.runner
    welcome
    get_user_answer

  end



#list of dogs(interpolate) in numbers

end
