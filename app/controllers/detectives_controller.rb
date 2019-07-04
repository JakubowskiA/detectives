class DetectivesController < ApplicationController
  def index
    @detectives = Detective.all
  end

  def new
    @detective = Detective.new
  end

  def create
    @detective = Detective.create(detective_params)
    if @detective.save
      redirect_to detective_path(@detective)
    else
      render :new
    end
  end

  def show
    @detective = Detective.find(params[:id])
  end

  def edit
    @detective = Detective.find(params[:id])
  end

  def update
    @detective = Detective.find(params[:id])
    @detective.update(detective_params)
    redirect_to detective_path(@detective)
  end

  def destroy
    @detective = Detective.find(params[:id]).destroy
    redirect_to detectives_path
  end

  private

  def detective_params
    params.require(:detective).permit(:name, :team, :home)
  end
end
