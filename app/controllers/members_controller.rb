class MembersController < ApplicationController
  def new
      @family = Family.find(params[:family_id])
      @member = Member.new
    end

    def create
      @family = Family.find(params[:family_id])
      @member = @family.members.create!(member_params)
      redirect_to @family
    end

    def show
      @member = Member.find(params[:id])
      @family = @member.family
    end

    def edit
      @member = Member.find(params[:id])
      @family = @member.family
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
      redirect_to @member.family
    end

    private
    def member_params
      params.require(:member).permit(:name, :date_of_birth, :img_url, :email, :phone)
    end
  end
