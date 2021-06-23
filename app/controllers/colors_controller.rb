class ColorsController < ApplicationController
  before_action :set_color, only: [:show, :update, :destroy]

  # GET /colors
  def index
    if params[:feeling_id]
      @feeling = Feeling.find_by_id(params[:feeling_id])
      @colors = @feeling.colors
    else 
    @colors = Color.all
    end 
    render json: @colors
  end

  # GET /colors/1
  def show
    render json: @color
  end

  # POST /colors
  def create

    @color = Color.new(color_params)
    
    @feeling = Feeling.find_by(name: params[:feeling])
    @color.feeling_id = @feeling.id


    if @color.save
      render json: @color, status: :created, location: @color
    else
      
      render json: @color.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /colors/1
  def update
    if @color.update(color_params)
      render json: @color
    else
      render json: @color.errors, status: :unprocessable_entity
    end
  end

  # DELETE /colors/1
  def destroy
    @color.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color
      @color = Color.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def color_params
      params.require(:color).permit(:name, :hex_code, :likes, :feeling_id)
    end
end
