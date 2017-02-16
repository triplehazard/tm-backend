class FixedTasksController < ApplicationController
  before_action :set_fixed_task, only: [:show, :update, :destroy]

  # GET /fixed_tasks
  def index
    @fixed_tasks = FixedTask.all

    render json: @fixed_tasks
  end

  # GET /fixed_tasks/1
  def show
    render json: @fixed_task
  end

  # POST /fixed_tasks
  def create
    @fixed_task = FixedTask.new(fixed_task_params)

    if @fixed_task.save
      render json: @fixed_task, status: :created, location: @fixed_task
    else
      render json: @fixed_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fixed_tasks/1
  def update
    if @fixed_task.update(fixed_task_params)
      render json: @fixed_task
    else
      render json: @fixed_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fixed_tasks/1
  def destroy
    @fixed_task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixed_task
      @fixed_task = FixedTask.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fixed_task_params
      params.fetch(:fixed_task, {})
    end
end
