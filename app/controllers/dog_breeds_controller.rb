class DogBreedsController < ApplicationController
  before_action :set_dog_breed, only: [:show, :edit, :update, :destroy]

  # GET /dog_breeds
  # GET /dog_breeds.json
  def index
  end

  # GET /dog_breeds/1
  # GET /dog_breeds/1.json
  def show
  end

  # GET /dog_breeds/new
  def new
  end

  # GET /dog_breeds/1/edit
  def edit
  end

  # POST /dog_breeds
  # POST /dog_breeds.json
  def create
  end

  # PATCH/PUT /dog_breeds/1
  # PATCH/PUT /dog_breeds/1.json
  def update
  end

  # DELETE /dog_breeds/1
  # DELETE /dog_breeds/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_breed
      @dog_breed = DogBreed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_breed_params
      params.require(:dog_breed).permit(:dog_id, :breed_id)
    end
end
