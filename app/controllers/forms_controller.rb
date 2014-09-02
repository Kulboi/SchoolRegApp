class FormsController < ApplicationController
	def new
		@form = Form.new
	end

	def create
			@form = Form.new(form_params)

		if	@form.save
			redirect_to @form
		else
			render  'new'
		end 
	end

	def show
		@form = Form.find(params[:id])
	end

	def update
  		@form = Form.find(params[:id])
 
  	if @form.update(form_params)
    	redirect_to @form
  	else
    render 'edit'
  end

  def destroy
  		@form = Form.find(params[:id])
  		@form.destroy
 
  		redirect_to forms_path
	end
end
private
  	def form_params
    	params.require(:form).permit(:First_Name, :LAST_Name, :Class, 
    		:Gender)
  	end
end	
