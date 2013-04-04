class RehearsalsController < ApplicationController
  def index
    @rehearsals = Rehearsal.where('date >= ?', Time.now).order('date')
  end
end
