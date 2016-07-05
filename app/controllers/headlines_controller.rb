class HeadlinesController < ApplicationController
  def new
    @issue = Issue.find(params[:issue_id])
    @headline = @issue.headlines.new
  end
  def create
    @issue = Issue.find(params[:issue_id])
    @headline = @issue.headlines.create!(headline_params)

    redirect_to issue_path(@issue)
  end


  private
  def headline_params
    params.require(:headline).permit(:url, :issue_id, :affiliation)
  end
end
