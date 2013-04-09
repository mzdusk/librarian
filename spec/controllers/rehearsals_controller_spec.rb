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

      it "assigns @rehearsals with no past rehearsals" do
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

        it "assigns @rehearsals with 10 rehearsals" do
          expect(assigns(:rehearsals)).to have(10).items
        end
      end

      context "page 2" do
        before do
          get :index, :page => 2
        end

        it "assigns @rehearsals with 5 rehearsals" do
          expect(assigns(:rehearsals)).to have(5).items
        end
      end
    end
  end

  describe "GET new" do
    before do
      get :new
    end

    it "assigns @rehearsal" do
      expect(assigns(:rehearsal)).not_to be_nil
    end

    it "assigns @rehearsal with new recoard" do
      expect(assigns(:rehearsal)).to be_new_record
    end
  end

  describe "POST create" do
    context "when valid parameter specified" do
      let(:params) do
        { :rehearsal => { :content => "My Text",
            'date(1i)' => 2013,
            'date(2i)' => 5,
            'date(3i)' => 6,
            'date(4i)' => 18,
            'date(5i)' => 30,
            :place => "Somewhere" } }
      end

      it "creates new rehearsal" do
        expect { post(:create, params) }.to change{ Rehearsal.count }.by(1)
      end

      it "redirects to index action" do
        post :create, params
        expect(response).to redirect_to(:action => :index)
      end
    end

    context "when invalid parameter specified" do
      let(:params) do
        { :rehearsal => { :content => "",
            'date(1i)' => 2013,
            'date(2i)' => 5,
            'date(3i)' => 6,
            'date(4i)' => 18,
            'date(5i)' => 30,
            :place => "Somewhere" } }
      end

      it "does not create new rehearsal" do
        expect { post(:create, params) }.not_to change { Rehearsal.count }
      end

      it "renders new template" do
        post :create, params
        expect(response).to render_template(:new)
      end
    end
  end
end
