class AuthorsController < ApplicationController
  def new
    @page_title = 'Add new Author'
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save

    redirect_to authors_path
  end

  def update
    @author = Author.find(params[author_params])
    @author.update
    flash[:notice] = "Author Updated Successfully"
    redirect_to authors_path
  end

  def edit
    @author = Author.find(params[:id])
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    flash[:alert] = "Author Removed"
    redirect_to authors_path
  end

  def index
    @author = Author.all
  end

  
  private
    def author_params
    params.require(:author).permit!
    end
end

