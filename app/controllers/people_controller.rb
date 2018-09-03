class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
    @groups = Group.all
  end

  def create
    @person = Person.new(person_params)
    @groups = Group.all
    if @person.save
      flash[:success]= "#{@person.name} added!"
      redirect_to people_path
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)
    if @person.save
      flash[:success] = "#{@person.name} updated!"
      redirect_to people_path
    else
      render :edit
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :birthday, :group_id, :important_date, :important_date_text)
  end
end
