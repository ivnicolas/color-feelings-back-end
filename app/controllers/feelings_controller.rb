class FeelingsController < ApplicationController
  before_action :set_feeling, only: [:show, :update, :destroy]

  # GET /feelings
  def index
    @feelings = Feeling.all

    render json: @feelings
  end

  # GET /feelings/1
  def show
    render json: @feeling
  end

  # POST /feelings
  def create
    @feeling = Feeling.new(feeling_params)

    if @feeling.save
      render json: @feeling, status: :created, location: @feeling
    else
      render json: @feeling.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feelings/1
  def update
    if @feeling.update(feeling_params)
      render json: @feeling
    else
      render json: @feeling.errors, status: :unprocessable_entity
    end
  end

  # DELETE /feelings/1
  def destroy
    @feeling.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feeling
      @feeling = Feeling.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feeling_params
      params.require(:feeling).permit(:name, :description)
    end
end
