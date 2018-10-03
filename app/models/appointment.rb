class Appointment < ActiveRecord::Base
  belongs_to :dog
  belongs_to :groomer
  @@appointment = nil

  def self.all_appointments
    Appointment.all.each do |appt|
      puts "#{appt.id}. #{appt.day}"
    end
  end

  def self.pics
    puts "
            >(.)__ <(.)__ =(.)__
              (___/  (___/  (___/
                                       "
  end

  def self.get_appointments
    puts "When would you like to make an appointment?"
    all_appointments
  end

  def self.user_input
    gets.chomp
  end

  def self.all_services
    Appointment.all.each do |appt|
    puts "#{appt.id}. #{appt.service}"
    end
  end

  def self.appointment_answer(arg)
    @@appointment = Appointment.find(arg)
    puts "I'll make an appointment for #{appointment.day}"
    Service.run
  end

  def self.appointment
    @@appointment
  end

  def self.appointment=(appointment)
    @@appointment = appointment
  end

  def self.runner
    pics
    get_appointments
    appointment_answer(user_input)
    service_answer(user_input)
  end


end
