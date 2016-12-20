class TomorrowsController < ApplicationController
  before_action :set_tomorrow, only: [:show, :edit, :update, :destroy]

  # GET /tomorrows
  # GET /tomorrows.json
  def index
    @tomorrow = Tomorrow.new
    @tomorrows = Tomorrow.all
  end

  # GET /tomorrows/1
  # GET /tomorrows/1.json
  def show
  end

  # GET /tomorrows/new
  def new
    @tomorrow = Tomorrow.new
  end

  # GET /tomorrows/1/edit
  def edit
  end

  # POST /tomorrows
  # POST /tomorrows.json
  def create
    @tomorrow = Tomorrow.new(tomorrow_params)

    respond_to do |format|
      if @tomorrow.save
        format.html { redirect_to root_path}
        format.json { render :show, status: :created, location: @tomorrow }
      else
        format.html { render :new }
        format.json { render json: @tomorrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tomorrows/1
  # PATCH/PUT /tomorrows/1.json
  def update
    respond_to do |format|
      if @tomorrow.update(tomorrow_params)
        format.html { redirect_to @tomorrow, notice: 'Tomorrow was successfully updated.' }
        format.json { render :show, status: :ok, location: @tomorrow }
      else
        format.html { render :edit }
        format.json { render json: @tomorrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tomorrows/1
  # DELETE /tomorrows/1.json
  def destroy
    @tomorrow.destroy
    respond_to do |format|
      format.html { redirect_to tomorrows_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tomorrow
      @tomorrow = Tomorrow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tomorrow_params
      params.require(:tomorrow).permit(:name)
    end
end
