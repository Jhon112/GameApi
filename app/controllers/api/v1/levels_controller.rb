class Api::V1::LevelsController < ApplicationController
  before_action :set_level, only: :destroy

  def index
    @levels = Level.all
    render json: @levels, status: :ok
  end

  def create
    @level = Level.new(level_params)
    if @level.save
      render json: @level, status: :created
    else
      render json: @level.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @level.destroy
    render json: {}, status: :ok
  end

  private

  def set_level
    @level = Level.find(params[:id])
  end

  def level_params
    params.require(:level).permit(:name)
  end
end
