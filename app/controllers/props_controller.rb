class PropsController < ApplicationController
before_action :set_prop, only: [:show,:edit,:update,:destroy]

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
  end

  def edit
  end

  def update
    if @prop.update(prop_params)
      redirect_to props_path
      flash[:notice] = "物件を編集しました。"
    else
      render :edit
    end
  end

  def destroy
    @prop.destroy
    redirect_to props_path
    flash[:notice] = "物件を削除しました。"
  end

  private

  def prop_params
    params.require(:prop).permit(:name,:address,:rent,:years_old,:comment)
  end

  def set_prop
    @prop = Prop.find(params[:id])
  end
end
