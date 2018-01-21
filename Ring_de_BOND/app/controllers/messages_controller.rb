class MessagesController < ApplicationController
  def show
    @user = User.find_by(:id => params[:id])
  end

  def index
    @user = User.first
    tmp1 = @user.uName
    @id1 = @user.id 

    @user1 = User.where.not(uName: tmp1).order(uName: :desc).last
    tmp2 = @user1.uName
    @id2 = @user1.id

    @user2 = User.where.not(uName: tmp1, uName: tmp2).order(uName: :desc).first
    @id3 = @user2.id
  end

  def edit
    @user = User.find_by(:id => params[:id])
  end

  def show2
    @accounts = User.all
  end

  def show3
    @user = User.first
    tmp1 = @user.uName
    @id1 = @user.id 

    @user1 = User.where.not(uName: tmp1).order(uName: :desc).last
    tmp2 = @user1.uName
    @id2 = @user1.id

    @user2 = User.where.not(uName: tmp1, uName: tmp2).order(uName: :desc).first
    @id3 = @user2.id

    @accounts = User.all
  end

  def show4
    @user = User.first
  end

end
