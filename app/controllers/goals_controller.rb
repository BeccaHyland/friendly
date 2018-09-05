class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)
    if @goal.save
      flash[:success] = "#{@goal.description} Goal updated!"
      redirect_to goals_path
    else
      render :edit
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:description, :frequency)
  end
end
