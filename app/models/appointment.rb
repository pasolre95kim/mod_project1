class Appointment < ActiveRecord::Base
  belongs_to :dog
  belongs_to :groomer

  def self.all_appointments
    Appointment.all.each do |appt|
      puts "#{appt.id}. #{appt.day}"
    end
  end

  def self.pics
    puts "
    _     /)---(\          /~~~\
    \\   (/ . . \)        /  .. \
     \\__)-\(*)/         (_,\  |_)
      \_       (_         /   \@/    /^^^\
      (___/-(____) _     /      \   / . . \
                   \\   /  `    |   V\ Y /V
                    \\/  \   | _\    / - \
                     \   /__'|| \\_  |    \
                      \_____)|_).\_).||(__V

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
    appt = Appointment.find(arg)
    puts "Sure, I'll make an appointment for #{appt.day}"
    Service.run
  end



  def self.runner
    pics
    get_appointments
    appointment_answer(user_input)
    service_answer(user_input)
  end


end
