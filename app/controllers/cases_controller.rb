class CasesController < ApplicationController
  def index
    @cases = Case.all
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.create(case_params)
    if @case.save
      redirect_to case_path(@case)
    else
      render :new
    end
  end

  def show
    @case = Case.find(params[:id])
  end

  def edit
    @case = Case.find(params[:id])
  end

  def update
    @case = Case.find(params[:id])
    @case.update(case_params)
    redirect_to case_path(@case)
  end

  def destroy
    @case = Case.find(params[:id]).destroy
    redirect_to cases_path
  end

  private

  def case_params
    params.require(:case).permit(:title, :year, :solved, :detective_id)
  end
end
