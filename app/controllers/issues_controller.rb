class IssuesController < ApplicationController

  def new
    @issue = Issue.new
  end

  def show
    @issue = Issue.find(params[:id])
    @comments = @issue.comments
  end

  def create
    Issue.create(issue_params)
    redirect_to root_path
  end

  def destroy
    i = Issue.find(params[:id])
    i.destroy
    redirect_to root_path
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
    i = Issue.find(params[:id])
    i.update_attributes(issue_params)
    redirect_to root_path
  end

  private
  def issue_params
    params.require(:issue).permit(:title, :content)
  end
end
