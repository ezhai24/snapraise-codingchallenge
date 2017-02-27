class TasksController < ApplicationController
    def index
    end

    def create
        @task = Task.new(task_params)

        @task.save
    end

    private
        def task_params
            params.require(:task).permit(:task_text)
        end

end