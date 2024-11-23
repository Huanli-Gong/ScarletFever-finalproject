class PresentationsController < ApplicationController
  before_action :set_presentation, only: %i[ show edit update destroy]

  # GET /presentations or /presentations.json
  def index
    @presentations = Presentation.all
  end

  # GET /presentations/1 or /presentations/1.json
  def show
  end

  # GET /presentations/new
  def new
    @presentation = Presentation.new
  end

  def feedback
    @feedback = @presentation.feedbacks.new
  end

  # GET /presentations/1/edit
  def edit
  end

  # POST /presentations or /presentations.json
  def create
    @presentation = Presentation.new(presentation_params)

    respond_to do |format|
      if @presentation.save
        format.html { redirect_to @presentation, notice: "Presentation was successfully created." }
        format.json { render :show, status: :created, location: @presentation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presentations/1 or /presentations/1.json
  def update
    respond_to do |format|
      if @presentation.update(presentation_params)
        #Jump to the presentations page to prevent users from seeing other feedback
        format.html { redirect_to presentations_url, notice: "Feedback was successfully added." }
        format.json { head :no_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentations/1 or /presentations/1.json
  def destroy
    @presentation.destroy
    respond_to do |format|
      format.html { redirect_to presentations_url, notice: "Presentation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presentation
      @presentation = Presentation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def presentation_params
      params.require(:presentation).permit(:name,
        #Allow to add feedback
        feedbacks_attributes: [:po1,:po2,:po3,:po4,:po5,:po6,:po7,:pc1,:pc2,:pc3,:pc4,:pv1,:pv2,:pv3,:pv4,:pv5,:pd1,:pd2,:pd3,:overall_rating,:comments,:presentation_id,:user_id,  :destroy]
      )
    end
end
