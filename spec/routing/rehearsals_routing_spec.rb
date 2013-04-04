require "spec_helper"

describe "routes for Rehearsals" do
  it "routes /rehearsals to the index action" do
    expect({ :get => "/rehearsals" }).to route_to(:controller => "rehearsals",
                                                 :action => "index")
  end
end
