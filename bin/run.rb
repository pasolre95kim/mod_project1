require_relative '../config/environment'

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

# do I save all the data with .save or somewhere else? like in the run file..?


# Dog.welcome
# Dog.get_user_answer
# Dog.all_name

Dog.runner
