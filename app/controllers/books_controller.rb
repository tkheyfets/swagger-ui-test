class BooksController < ApplicationController
	def index
		@books = Book.all
		render json: @books
	end

	def show
  		@book = Book.find(params[:id])
	    render json: @book
	end

	def create
	    @book = Book.create!(params.permit(:title))
	    render json: @book
    end

	def update
    	@book = Book.find(params[:id])
	    @book.update(params.permit(:title))
	    head :no_content
    end

	def destroy
    	@book = Book.find(params[:id])
    	@book.destroy
   		head :no_content
	end
end
