class IssuesController < ApplicationController
  def index
    if params[:q]
      @issues = Issue.where("lower(title) LIKE ?", "%#{params[:q].downcase}%")
    else
      @issues = Issue.all
    end

  end
  def show
    @issue = Issue.find(params[:id])
  end
  def new
    @issue = Issue.new
  end
  def create
    @issue = Issue.create!(issue_params)
    redirect_to issue_path(@issue)
  end
  def edit
    @issue = Issue.find(params[:id])
  end
  def update
    @issue = Issue.find(params[:id])
    @issue.update(issue_params)

    redirect_to issue_path(@issue)
  end
  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy

    redirect_to issues_path
  end


  private
  def issue_params
    params.require(:issue).permit(:title, :img_url, :description)
  end
end
