class TimeTermsController < ApplicationController
  before_action :set_time_term, only: [:show, :update, :destroy]

  # GET /time_terms
  def index
    @time_terms = TimeTerm.all

    render json: @time_terms
  end

  # GET /time_terms/1
  def show
    render json: @time_term
  end

  # POST /time_terms
  def create
    @time_term = TimeTerm.new(time_term_params)

    if @time_term.save
      render json: @time_term, status: :created, location: @time_term
    else
      render json: @time_term.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /time_terms/1
  def update
    if @time_term.update(time_term_params)
      render json: @time_term
    else
      render json: @time_term.errors, status: :unprocessable_entity
    end
  end

  # DELETE /time_terms/1
  def destroy
    @time_term.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_term
      @time_term = TimeTerm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def time_term_params
      params.require(:time_term).permit(:start_time, :end_time, :preparation_time, :task_id, :calendar_id, :location_id)
    end
end
