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
      flash[:notice] = "物件を登録しました。"
    else
      render :new
    end
  end

  def show
    @prop = Prop.find(params[:id])
  end

  def edit
    @prop = Prop.find(params[:id])
  end

  def update
    @prop = Prop.find(params[:id])
    if @prop.update(prop_params)
      redirect_to props_path
      flash[:notice] = "物件を編集しました。"
    else
      render :edit
    end
  end

  private

  def prop_params
    params.require(:prop).permit(:name,:address,:rent,:years_old,:comment)
  end
end
