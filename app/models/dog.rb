class Dog < ActiveRecord::Base
  has_many :appointments
  has_many :groomers, through: :appointments
  @@all = nil

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
    puts "Hello #{dog.name}. You are a beautiful #{dog.age} year old #{dog.breed}"
    puts "Is this correct? Press y/n"
    case toby_input = gets.chomp
      when "y"
      Appointment.runner
      when "n"
        runner
      end
    else
      puts "Let's try that again"
      puts "I said enter between 1-10"
      runner
    end
  end

  def self.dog
    @@dog
  end

  def self.dog=(dog)
    @@dog = dog
  end

  def self.runner
    welcome
    get_user_answer
    dogs(user_input)
  end
end
