class WorksController < ApplicationController 
	def index
		fetch_stories 'created_at DESC'
  end

  def new
		@work = Work.new
  end

  def create
			@work = Work.new(params[:work])
			if @work.save
				flash[:notice] = 'Work successfully submitted'
				redirect_to work_path(@work)
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
		@works = Work.paginate 	:page  => params[:page], 
														:order  => conditions, 
														:per_page  => 6
	end
	
end
