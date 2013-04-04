require 'spec_helper'

describe RehearsalsController do
  describe "GET index" do
    it "assigns @rehearsals" do
      get :index
      expect(assigns(:rehearsals)).not_to be_nil
    end

    it "@rehearsals has no past rehearsals" do
      create_list :future_rehearsal, 3
      create_list :past_rehearsal, 2
      get :index
      expect(assigns(:rehearsals)).to be_all { |rehearsal| rehearsal.date > Time.now }
    end
  end
end
