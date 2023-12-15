class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  before_action :set_lecturer, only: [:show, :index]

  def show
    @lecturers = @subject.lecturers
  end

  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end
  def edit

  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to @subject
    else
      render 'new'
    end
  end

  def update
    if @subject.update(subject_params)
      redirect_to @subject
    else
      render 'edit'
    end
  end

  def destroy
    @subject.destroy
    redirect_to subjects_path
  end


  private

  def subject_params
    params.require(:subject).permit(:title, :description, :lecturer_id, :start_time, :end_time)
  end
  def set_subject
    @subject = Subject.find(params[:id])
  end

  def set_lecturer
    @lecturer = Lecturer.find_by(id: @subject.lecturer_id) if @subject.present?
  end
end