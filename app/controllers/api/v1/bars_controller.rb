class Api::V1::BarsController < ApplicationController
  def index
    @bars = Bar.all
    render json: @bars
    # the above automatically uses the bar_serializer
  end

  def show
    binding.pry
  end

  private

  def selected_bar
    Bar.find(params[:id])
  end
end
