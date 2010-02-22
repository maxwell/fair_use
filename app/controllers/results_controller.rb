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
		  if @result.final > 0
		    flash[:notice] = 'Great news, it looks like this is fair use'
		  else
			  flash[:error] = 'Bummer City! Looks like this this isn\'t fair use.'
			end
			redirect_to work_path(params[:work_id])
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