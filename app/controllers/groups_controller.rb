class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def edit

  end
end
