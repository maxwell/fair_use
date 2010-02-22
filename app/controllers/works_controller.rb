class WorksController < ApplicationController 
	def index
		@works = Work.paginate 	:page  => params[:page], 
														:order  => 'created_at DESC', 
														:per_page  => 6
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
			@results = @work.results.all.paginate :page  => params[:page], 
  														              :order  => 'created_at DESC', 
  														              :per_page  => 6
  end
	
	protected
  def destroy
  end

end
