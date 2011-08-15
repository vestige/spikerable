class TasksController < ApplicationController
  def index
    @tasks = Task.all(:conditions => { :done => false }, :order => "due_date")  
  end

end
