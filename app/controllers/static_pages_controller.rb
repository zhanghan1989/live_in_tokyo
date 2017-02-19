class StaticPagesController < ApplicationController
  def home
    @issues  = [ { title: "Ruby lovers", comments: "4" }, 
      { title: "Rails and Laravel", comments: "5" } ]
  end

  def help
  end

  def about
  end

  def contact
  end
end
