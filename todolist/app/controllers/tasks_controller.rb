class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def create
        @task = Task.new(task_params)
        @task.save
        redirect_to :back
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to :back
    end

    private
        def task_params
            params.require(:task).permit(:taskName)
        end
end