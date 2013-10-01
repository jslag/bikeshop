class FrameColorsController < ApplicationController
  before_action :set_frame_color, only: [:show, :edit, :update, :destroy]

  # GET /frame_colors
  # GET /frame_colors.json
  def index
    @frame_colors = FrameColor.all
  end

  # GET /frame_colors/1
  # GET /frame_colors/1.json
  def show
  end

  # GET /frame_colors/new
  def new
    @frame_color = FrameColor.new
  end

  # GET /frame_colors/1/edit
  def edit
  end

  # POST /frame_colors
  # POST /frame_colors.json
  def create
    @frame_color = FrameColor.new(frame_color_params)

    respond_to do |format|
      if @frame_color.save
        format.html { redirect_to @frame_color, notice: 'Frame color was successfully created.' }
        format.json { render action: 'show', status: :created, location: @frame_color }
      else
        format.html { render action: 'new' }
        format.json { render json: @frame_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frame_colors/1
  # PATCH/PUT /frame_colors/1.json
  def update
    respond_to do |format|
      if @frame_color.update(frame_color_params)
        format.html { redirect_to @frame_color, notice: 'Frame color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @frame_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frame_colors/1
  # DELETE /frame_colors/1.json
  def destroy
    @frame_color.destroy
    respond_to do |format|
      format.html { redirect_to frame_colors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frame_color
      @frame_color = FrameColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frame_color_params
      params.require(:frame_color).permit(:name)
    end
end
