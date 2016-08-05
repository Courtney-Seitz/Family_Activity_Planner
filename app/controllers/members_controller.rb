class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.create!(member_params)
    redirect_to @member
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      flash[:notice] = "#{@member.name} was successfully updated."
      redirect_to @member
    else
      render :edit
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to members_path
  end

  private
  def member_params
    params.require(:member).permit(:name, :date_of_birth, :img_url, :email, :phone)
  end

end
