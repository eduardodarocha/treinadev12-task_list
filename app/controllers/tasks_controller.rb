class TasksController < ApplicationController
    def new
    end
  
    def create
      # @task = Task.new(description: params[:task][:description], status: params[:task][:status])
      @task = Task.new(params.require(:task).permit(:description, :status))
      @task.save #salva no banco a tarefa que criamos
      redirect_to root_path #viu como o root é importante

    end
  
end