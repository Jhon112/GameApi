class Api::V1::ScoresController < ApplicationController
  before_action :set_score, only: [:show, :destroy]

  def index
    @scores = Score.all

    render json: @scores, status: :ok
  end

  def create
    @score = Score.find_or_initialize_by(user_id: params[:user_id], level_id: params[:level_id])
    @score.total_score = params[:total_score]
    if @score.save
      render json: @score, status: :created
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @score, status: :ok
  end

  def destroy
    @score.destroy
    render json: {}, status: :ok
  end

  private

  def set_score
    begin
      @score = Score.find_by!(user_id: params[:user_id], level_id: params[:level_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: e }, status: 404
    end
  end
end
