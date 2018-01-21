class SessionsController < ApplicationController

  def new
$time = params[:time]
$rasId = params[:rasId]

  end

  def create
 user = AccountInformation.find_by(accountId: params[:session][:accountId])
    if user && user.authenticate(params[:session][:password])
      log_in user

user.time = $time
user.rasId = $rasId
user.save

      redirect_to user
else
 flash.now[:danger] = '入力に間違いがあります'
    render 'new'
  end
end

  def destroy
log_out
redirect_to root_url
  end

end
