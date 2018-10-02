class Groomer < ActiveRecord::Base
  has_many :appointments
  has_many :dogs, through: :appointments

  def self.ask_groomer
    puts "Please pick a groomer"
  end
  
  def self.all_groomers
    count = 0
    Groomer.all.each do |groomer|
      count += 1
      puts "#{count}. #{groomer.name}"
    end
  end








end
