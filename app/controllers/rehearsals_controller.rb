class RehearsalsController < ApplicationController
  def index
    @rehearsals = Rehearsal.where('date >= ?', Time.now).order('date').page(params[:page]).per(10)
  end
end
