class PersonGoalsController < ApplicationController

  def new
    @person_goal = PersonGoal.new
  end

  def create
    @person = Person.find(params[:person_id])
    @goal = Goal.find(params[:goal_id])
    @person_goal = PersonGoal.new(person_goal_params)
    @person_goal[:title] = "#{@person.name)}: #{@goal.title}"
    if @person_goal.save
      flash[:success] = "#{@person.name} added to #{@goal.title}!"
      redirect_to goals_path
    else
      render :new
    end
  end

  def person_goal_params
    params.require(:person_goal).permit(:person_id, :goal_id, :title)
  end

end
