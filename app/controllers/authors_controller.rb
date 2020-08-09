class AuthorsController < ApplicationController
	def index
		@authors = Author.all
		render json: @authors
	end

	def show
  		@author = Author.find(params[:id])
	    render json: @author
	end

	def create
	    @author = Author.create!(params.permit(:first_name, :last_name))
	    render json: @author
    end

	def update
    	@author = Author.find(params[:id])
	    @author.update(params.permit(:first_name, :last_name))
	    head :no_content
    end

	def destroy
    	@author = Author.find(params[:id])
    	@author.destroy
   		head :no_content
	end
end
