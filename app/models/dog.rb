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
    user_input = gets.chomp
  end

  def menu
    case user_input
     when "1"
     toby

     when "2"
     menu_two

     when "3"
     menu_three

     when "4"
     menu_four

     when "5"
     menu_five

     when "6"
     menu_six

     when "7"
     menu_seven

     when "8"
     menu_eight
   end
  end




#list of dogs(interpolate) in numbers

end
