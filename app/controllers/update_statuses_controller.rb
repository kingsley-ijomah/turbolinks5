class UpdateStatusesController < ApplicationController
  def update
    redirect_to tasks_path if task.update_attribute(:status, status)
  end

  private

  def update_params
    params.permit(:id, :status)
  end

  def status
    update_params[:status]
  end

  def task
    Task.find(update_params[:id])
  end
end
