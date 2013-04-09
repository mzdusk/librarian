class RehearsalsController < ApplicationController
  def index
    @rehearsals = Rehearsal.where('date >= ?', Time.now).order('date').page(params[:page]).per(10)
  end

  def new
    @rehearsal = Rehearsal.new
  end

  def create
    @rehearsal = Rehearsal.new(params[:rehearsal])
    if @rehearsal.save
      redirect_to :action => :index
    else
      render :action => :new
    end
  end
end
