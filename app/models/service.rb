require 'pry'
require 'launchy'
class Service < ActiveRecord::Base
  has_many :appointments


  def self.all_services
    Service.all.each do |s|
      puts "#{s.id}. #{s.service}"
    end
  end

  def self.ask_service
    puts "Which service would you like?"
    all_services
  end

  def self.user_input
    gets.chomp
  end

  def self.users_answer(arg)
    service = Service.find(arg)
    puts "You have booked for #{service.service} on #{Appointment.appointment.day}!"
  end

    def self.run
      ask_service
      users_answer(user_input)
      Launchy.open(Dog.dog.picture)
      Dog.runner
    end


end
