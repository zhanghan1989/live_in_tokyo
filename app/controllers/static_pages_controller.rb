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

  def letsencrypt
    render text: "0c37N0E2GH_wXZOlZGIXYE8UOH4uJQi6V9XJlxBe4i8.jSnYGXTvSCXx7AwLpjYYeGtIDS5dcEl_2wjnFsJe6hs"
  end
end
