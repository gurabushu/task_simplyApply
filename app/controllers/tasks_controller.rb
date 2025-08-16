class TasksController < ApplicationController

    def index
        @tasks = Task.all

    end

    def update
        @task = Task.find(params[:id])
        @task_params = params.require(:task).permit(:status)
        if @task.update(@task_params)
            redirect_to @task, notice: "タスク更新完了"
        else
            render :edit
        end
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task_create = Task.new
    end

    def create
        @task_params = params.require(:task).permit(:task, :status, :created_day, :complated_day, :description, :title)
        @task_create = Task.new(@task_params)
        if @task_create.save
            redirect_to @task_create, notice: "タスク登録完了"
        else
            render :new
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path, notice: "タスクを削除しました。"
    end
end