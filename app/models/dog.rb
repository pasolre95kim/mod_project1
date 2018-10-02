class Dog < ActiveRecord::Base
  has_many :appointments
  has_many :groomers, through: :appointments

  def self.welcome
    puts "Hello & welcome!"
  end

  def self.get_user_answer
    puts "What's your dog's name?"
    def self.all_name
      count = 0
      Dog.all.each do |dog|
        count+= 1
        puts "#{count}. #{dog.name} "
      end
    end
    user_input = gets.chomp
  end



#list of dogs(interpolate) in numbers

end
