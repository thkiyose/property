class PropsController < ApplicationController
  def index
    @props = Prop.all
  end
end
