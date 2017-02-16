class RegularTasksController < ApplicationController
  before_action :set_regular_task, only: [:show, :update, :destroy]

  # GET /regular_tasks
  def index
    @regular_tasks = RegularTask.all

    render json: @regular_tasks
  end

  # GET /regular_tasks/1
  def show
    render json: @regular_task
  end

  # POST /regular_tasks
  def create
    @regular_task = RegularTask.new(regular_task_params)

    if @regular_task.save
      render json: @regular_task, status: :created, location: @regular_task
    else
      render json: @regular_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /regular_tasks/1
  def update
    if @regular_task.update(regular_task_params)
      render json: @regular_task
    else
      render json: @regular_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /regular_tasks/1
  def destroy
    @regular_task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regular_task
      @regular_task = RegularTask.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def regular_task_params
      params.require(:regular_task).permit(:time_estimate, :deadline, :splittable)
    end
end
