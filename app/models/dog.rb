class Dog < ActiveRecord::Base
  has_many :appointments
  has_many :groomers, through: :appointments

  def self.welcome
    puts "
.-.-. .-.-. .-.-. .-.-. .-.-. .-.-. .-.-.
'. w )'. e )'. l )'. c )'. o )'. m )'. e )
  ).'   ).'   ).'   ).'   ).'   ).'   ).'
                                                "
  end

  def self.all_name
    Dog.all.each do |dog|
      puts "#{dog.id}. #{dog.name} "
    end
  end

  def self.get_user_answer
    puts "What's your dog's name?"
    self.all_name
  end

  def self.user_input
    gets.chomp
  end

  def self.dogs(arg)
    dog = Dog.find(arg)
    puts "Hello #{dog.name}. You are a beautiful #{dog.age} year old #{dog.breed}"
    puts "Is this correct? Press y/n"
    case toby_input = gets.chomp
      when "y"
      Appointment.runner
      when "n"
        runner
    end
  end

  def self.runner
    welcome
    get_user_answer
    dogs(user_input)
  end
end
