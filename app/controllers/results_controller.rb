class ResultsController < ApplicationController
  
	def show
	
  end

  def new
		@result = Result.new
		@work=Work.find(params[:work_id])
  end

  def create
		@work=Work.find(params[:work_id])
		@result=@work.results.build(params[:result])
		
		if @result.save
			flash[:notice] = 'Result successfully submitted'
			redirect_to work_path(@work.id)
		else
			flash[:error] = 'error@@==!'
			render :action => 'new'
		end		
 end

  def index
		
  end


protected
  def destory
  end

end