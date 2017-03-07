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
      render text: "jXbXyuhnDULtRvDdDJSyXww78GxwBFAUAs_xHPZD4Bg.jSnYGXTvSCXx7AwLpjYYeGtIDS5dcEl_2wjnFsJe6hs"
  end
end
