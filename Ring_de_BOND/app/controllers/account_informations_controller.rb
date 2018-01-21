class AccountInformationsController < ApplicationController
 
  def show
    @user = AccountInformation.find(params[:id])

  end

 def new
    @user = AccountInformation.new
  end

def create
@user = AccountInformation.new(user_params)
    if @user.save
   log_in @user
    flash[:success] = "アカウントが作成されました。メニューのアカウント設定からであなたの情報を登録してください"  
redirect_to @user
    else
      render 'new'
    end
end

 def edit
    @user = AccountInformation.find(params[:id]) 
end

 def update
@user = AccountInformation.find(params[:id])
  if @user.update_attributes(user_params)
   flash[:success] = "編集しました"
   redirect_to @user
  else
   render 'edit'
  end
 end

  private

    def user_params
      params.require(:account_information).permit(:accountId, :password, :uName, :hobby, :interest, :dream, :free)
    end
end
