class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:success] = "#{@group.title} added!"
      redirect_to groups_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def group_params
    params.require(:group).permit(:title)
  end
end
