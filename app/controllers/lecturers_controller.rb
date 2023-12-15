class LecturersController < ApplicationController
  before_action :set_lecturer, only: [:show]
  def index
    @lecturers = Lecturer.all
  end

  def show
  end

  def new

  end

  def create
    @lecturer = Lecturer.new(lecturer_params)
    if @lecturer.save
      redirect_to @lecturer
    else
      render 'new'
    end
  end

  private

  def lecturer_params

  end
  def set_lecturer
    @lecturer = Lecturer.find(params[:id])
  end

end