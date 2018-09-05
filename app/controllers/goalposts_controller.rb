class GoalpostsController < ApplicationController
  def new
    @goalpost = Goalpost.new
  end

  def create
    @goalpost = Goalpost.new(goalpost_params)
    if @goalpost.save
      flash[:success] = "Goalpost for #{@goalpost.date.strftime('%m/%d/%Y')} created!"
      redirect_to root_path
    else
      render :new
    end
  end
end
