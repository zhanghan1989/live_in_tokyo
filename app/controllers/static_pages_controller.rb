class StaticPagesController < ApplicationController
  def home
    #@issues  = [ { title: "Ruby lovers", comments: "4" }, 
      #{ title: "Rails and Laravel", comments: "5" } ]
    @issues = Issue.all.reverse
  end

  def help
  end

  def about
  end

  def contact
  end
end
