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
      flash[:success] = "#{@group.title} Group created!"
      redirect_to groups_path
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)
    if @group.save
      flash[:success] = "#{@group.title} Group updated!"
      redirect_to groups_path
    else
      render :edit
    end
  end

  private

  def group_params
    params.require(:group).permit(:title)
  end
end
