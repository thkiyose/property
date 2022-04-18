class PropsController < ApplicationController
  def index
    @props = Prop.all
  end

  def new
    @prop = Prop.new
  end

  def create
    @prop = Prop.new(prop_params)
    if @prop.save
      redirect_to props_path
    else
      render :new
    end
  end

  private

  def prop_params
    params.require(:prop).permit(:name,:rent,:years_old,:comment)
  end
end
