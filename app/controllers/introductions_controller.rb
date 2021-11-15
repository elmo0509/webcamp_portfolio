class IntroductionsController < ApplicationController

  def new
    @introduction = Introduction.new
  end

  def create
    @introduction = Introduction.new(introduction_params)
    @introduction.user_id = introduction_user.id
    @introduction.save
    redirect_to introductions_path
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def introduction_params
    params.require(:introduction).permit(:place, :author, :title, :address_prefecture, :address_after_prefecture, :address_building_name, :introduction)
  end

end
