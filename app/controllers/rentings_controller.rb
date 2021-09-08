class RentingsController < ApplicationController

  def index
    @rentings = Renting.all
  end

  def show
    @renting = Renting.find(params[:id])
  end

  def new
    @renting = Renting.new
    @skate = Skate.find(params[:skate_id])
  end

  def create
    @renting = Renting.new(renting_params)
    @skate = Skate.find(params[:skate_id])
    @renting.skate = @skate
    @renting.user = current_user
    if @renting.save
      redirect_to user_path(current_user), notice: 'ton skate est reservé!'
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  def renting_params
    params.require(:renting).permit(:name, :price, :description)
  end
end
