class StaticPagesController < ApplicationController
  def home
    #@issues  = [ { title: "Ruby lovers", comments: "4" }, 
      #{ title: "Rails and Laravel", comments: "5" } ]
      @issues = Issue.all
      # @users = User.all
    end

    def help
    end

    def about
    end

    def contact
    end

    def letsencrypt
     render text: "faN8XepsttirFwB1Dh4Jhp8vPUIbIpH0QVZbNLoDYLE.jSnYGXTvSCXx7AwLpjYYeGtIDS5dcEl_2wjnFsJe6hs"
   end
 end
