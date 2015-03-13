class RecordsController < ApplicationController
  def index
    @records = current_user.records
  end

  def new
    @record = Record.new
  end

  def create
    if current_user.records.create(record_params)
      redirect_to records_path
    else
      render :new
    end
  end

  def destroy
    Record.find(params[:id]).destroy
    redirect_to records_path
  end

  private

  def record_params
    params.require(:record).permit(:lower_tone, :upper_tone, :pulse)
  end
end
