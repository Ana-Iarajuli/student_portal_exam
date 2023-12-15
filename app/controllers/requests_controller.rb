class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_subject, only: [:create]
  def index

  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    duration = @subject.end_time - @subject.start_time
    @request = current_user.requests.new(
      subject_id: @subject.id,
      request_code: @subject.id,
      lecturer_id: @subject.lecturer_id,
      selected_hours: duration
    )
    if @request.save
      redirect_to @request, notice: 'Request was successfully created.'
    else
      render :new
    end

  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end


end