class Admin::GoalsController < Admin::BaseController

  def index
    @goals = Goal.all
  end

end
