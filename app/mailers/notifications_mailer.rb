class NotificationsMailer < ActionMailer::Base

  default :from => "derrickmar24@gmail.com"
  default :to => "derrickmar24@gmail.com"

  def new_message(message)
    @message = message
  end

end
