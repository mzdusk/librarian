require 'spec_helper'

describe RehearsalsController do
  describe "GET index" do
    before do
      get :index
    end

    it "assigns @rehearsals" do
      expect(assigns(:rehearsals)).not_to be_nil
    end

    context "when past rehearsals exist" do
      before do
        create_list :future_rehearsal, 3
        create_list :past_rehearsal, 2
      end

      it "@rehearsals has no past rehearsals" do
        expect(assigns(:rehearsals)).to be_all { |rehearsal| rehearsal.date > Time.now }
      end
    end

    context "when more than 10 future rehearsals exists" do
      before do
        create_list :future_rehearsal, 15
      end

      context "page 1" do
        before do
          get :index, :page => 1
        end

        it "@rehearsal has 10 rehearsals" do
          expect(assigns(:rehearsals)).to have(10).items
        end
      end

      context "page 2" do
        before do
          get :index, :page => 2
        end

        it "@rehearsal has 5 rehearsals" do
          expect(assigns(:rehearsals)).to have(5).items
        end
      end
    end
  end
end
