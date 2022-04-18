class PropsController < ApplicationController
  def index
    @props = Prop.all
  end

  def new
    @prop = Prop.new
  end
end
