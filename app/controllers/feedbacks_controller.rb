class FeedbacksController < ApplicationController
  before_action :set_feedback, only: %i[ show edit update destroy ]

  # GET /feedbacks or /feedbacks.json
  def index
    @feedbacks = Feedback.all
  end

  # GET /feedbacks/1 or /feedbacks/1.json
  def show
  end

  # GET /feedbacks/new
  def new
    @feedback = Feedback.new
    @presentation = Presentation.find(params[:presentation_id]) 
  # @feedback = Feedback.new presentation_id: presentation_id
  end

  # GET /feedbacks/1/edit
  def edit
  end

  # POST /feedbacks or /feedbacks.json
  def create
    @feedback = Feedback.new(feedback_params)
    respond_to do |format|
      if @feedback.save
        format.html { redirect_to @feedback, notice: "Feedback was successfully created." }
        format.json { render :show, status: :created, location: @feedback }
      else
        format.html { redirect_to new_presentation_feedback_path(@feedback.presentation_id)}
        flash.alert="Please fill in at least the Overall Rating"
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feedbacks/1 or /feedbacks/1.json
  def update
    respond_to do |format|
      if @feedback.update(feedback_params)
        format.html { redirect_to @feedback, notice: "Feedback was successfully updated." }
        format.json { render :show, status: :ok, location: @feedback }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedbacks/1 or /feedbacks/1.json
  def destroy
    @feedback.destroy
    respond_to do |format|
      format.html { redirect_to feedbacks_url, notice: "Feedback was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feedback_params
      #Allow user_id to be passed in
      params.require(:feedback).permit(:po1, :po2, :po3, :po4, :po5, :po6, :po7, :pc1, :pc2, :pc3, :pc4, :pv1, :pv2, :pv3, :pv4, :pv5, :pd1, :pd2, :pd3, :overall_rating, :comments,:presentation_id,:user_id)
    end
end
