class WorksController < ApplicationController
  def index
		fetch_stories ''
  end

  def new
	@work = Work.new
  end

  def create
			@work = Work.new(params[:work])
			if @work.save
				flash[:notice] = 'Work successfully submitted'
				redirect_to works_path
			else
				render :action => 'new'
			end
  end

  def show
			@work = Work.find(params[:id])
  end

	protected
  def destroy
  end

	def fetch_stories(conditions)
		@works = Work.find :all,
			:order => 'id DESC',
			:conditions => conditions
	end
	
end
