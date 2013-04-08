require "spec_helper"

describe "routes for Rehearsals" do
  it "routes /rehearsals to the index action" do
    expect({ :get => "/rehearsals" }).to route_to(:controller => "rehearsals",
                                                  :action => "index")
  end

  it "routes /rehearsals/new to the new action" do
    expect({ :get => "/rehearsals/new" }).to route_to(:controller => "rehearsals",
                                                      :action => "new")
  end
end
