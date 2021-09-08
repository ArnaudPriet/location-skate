class SkatesController < ApplicationController

  def show
    @skate = Skate.find(params[:id])
  end
end
