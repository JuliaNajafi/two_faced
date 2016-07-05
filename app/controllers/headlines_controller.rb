class HeadlinesController < ApplicationController
  def new
    @issue = Issue.find(params[:issue_id])
    @headline = @issue.headlines.new
  end
end
