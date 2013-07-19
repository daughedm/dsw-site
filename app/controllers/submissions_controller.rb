class SubmissionsController < ApplicationController

  respond_to :html 

  def index
    @submissions = Submission.where(is_public: true).order('random()').includes(:submitter, :theme, :track, :votes)
  end

  def new
    @submission = Submission.new(contact_email: current_user.try(:email))
  end

  def create
    @submission = current_user.submissions.new(params[:submission])
    if @submission.save
      redirect_to thanks_submissions_path
    else
      respond_with @submission
    end
  end

  def show
    @submission = Submission.where(id: params[:id], is_public: true).includes(:submitter, :track, :votes, :comments => :user).first!
  end

end
