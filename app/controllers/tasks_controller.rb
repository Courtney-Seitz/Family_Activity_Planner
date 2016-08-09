class TasksController < ApplicationController

    def new
      @member = Member.find(params[:member_id])
      @task = Task.new
    end

    def create
      @member = Member.find(params[:member_id])
      @task = @member.tasks.create!(task_params)
      redirect_to @member
    end

    def edit
      @task = Task.find(params[:id])
      @member = @task.member
    end

    def update
      @member = Member.find(params[:member_id])
      @task = Task.find(params[:id])
      if @task.update(task_params)
        flash[:notice] = "Task was successfully updated."
        redirect_to @member
      else
        render :edit
      end
    end

    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to @task.member
    end

    private
    def task_params
      params.require(:task).permit(:description, :location, :date, :note)
    end
  end
