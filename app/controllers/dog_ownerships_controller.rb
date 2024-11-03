class DogOwnershipsController < ApplicationController
  before_action :set_dog_ownership, only: %i[ show edit update destroy ]

  # GET /dog_ownerships or /dog_ownerships.json
  def index
    @dog_ownerships = DogOwnership.all
  end

  # GET /dog_ownerships/1 or /dog_ownerships/1.json
  def show
    @dog_ownerships = DogOwnership.find(params[:id])
  end

  # GET /dog_ownerships/new
  def new
    @dog_ownership = DogOwnership.new
  end

  # GET /dog_ownerships/1/edit
  def edit
  end

  # POST /dog_ownerships or /dog_ownerships.json
  def create
    @dog_ownership = DogOwnership.new(dog_ownership_params)

    respond_to do |format|
      if @dog_ownership.save
        format.html { redirect_to @dog_ownership, notice: "Dog ownership was successfully created." }
        format.json { render :show, status: :created, location: @dog_ownership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dog_ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dog_ownerships/1 or /dog_ownerships/1.json
  def update
    respond_to do |format|
      if @dog_ownership.update(dog_ownership_params)
        format.html { redirect_to @dog_ownership, notice: "Dog ownership was successfully updated." }
        format.json { render :show, status: :ok, location: @dog_ownership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dog_ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_ownerships/1 or /dog_ownerships/1.json
  def destroy
    @dog_ownership.destroy!

    respond_to do |format|
      format.html { redirect_to dog_ownerships_path, status: :see_other, notice: "Dog ownership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_ownership
      @dog_ownership = DogOwnership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dog_ownership_params
      params.require(:dog_ownership).permit(:dog_id, :owner_id)
    end
end
