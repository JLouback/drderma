class AdminMailer < ApplicationMailer
  default from: 'louback.ju@gmail.com'
 
  def new_user_registered(user)
    @user = user
    @url = 'http://localhost:3000/users'
    mail(to: 'juliana.m.louback@gmail.com', subject: 'User waiting for approval')
  end
end
