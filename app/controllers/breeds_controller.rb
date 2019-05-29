class BreedsController < ApplicationController
  before_action :set_breed, only: [:show, :edit, :update, :destroy]

  # GET /breeds
  # GET /breeds.json
  def index
  end

  # GET /breeds/1
  # GET /breeds/1.json
  def show
  end

  # GET /breeds/new
  def new
  end

  # GET /breeds/1/edit
  def edit
  end

  # POST /breeds
  # POST /breeds.json
  def create
  end

  # PATCH/PUT /breeds/1
  # PATCH/PUT /breeds/1.json
  def update
  end

  # DELETE /breeds/1
  # DELETE /breeds/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breed
      @breed = Breed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def breed_params
      params.require(:breed).permit(:name, :size, :temperament, :life_expectancy, :description)
    end
end
