class BefakepostsController < ApplicationController
  before_action :set_befakepost, only: %i[ show edit update destroy ]

  # GET /befakeposts or /befakeposts.json
  def index
    @befakeposts = Befakepost.all
  end
  # manifeste
  def manifest
  end

  # GET /befakeposts/1 or /befakeposts/1.json
  def show
  end

  # GET /befakeposts/new
  def new
    @befakepost = Befakepost.new
  end
  # GET /befakeposts/1/edit
  def edit
  end

  # POST /befakeposts or /befakeposts.json
  def create
    @befakepost = Befakepost.new(befakepost_params)

    respond_to do |format|
      if @befakepost.save
        format.html { redirect_to befakepost_url(@befakepost), notice: "Ton post à bien été créé !" }
        format.json { render :show, status: :created, location: @befakepost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @befakepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /befakeposts/1 or /befakeposts/1.json
  def update
    respond_to do |format|
      if @befakepost.update(befakepost_params)
        format.html { redirect_to befakepost_url(@befakepost), notice: "Le post à bien été mis à jour." }
        format.json { render :show, status: :ok, location: @befakepost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @befakepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /befakeposts/1 or /befakeposts/1.json
  def destroy
    @befakepost.destroy!

    respond_to do |format|
      format.html { redirect_to befakeposts_url, notice: "Le post à bien été supprimé." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_befakepost
      @befakepost = Befakepost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def befakepost_params
      params.require(:befakepost).permit(:username, :profile_picture, :front_picture, :back_picture, :description, :location)
    end
end
