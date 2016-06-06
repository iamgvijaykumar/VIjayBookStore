class PublishersController < ApplicationController
  def new
    @page_title = 'Add new Publisher'
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
      if
     @publisher.save
     flash[:notice] = "Publisher Created Successfully"
     redirect_to publishers_path
      else
      render 'new'
      end
    
  end

  def update
    @publisher = Publisher.find(prams[publisher_params])
    @publisher.update
    flash[:notice] = "Publisher Updated"
    redirect_to publishers_path
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy
    flash[:alert] = "Publisher Removed"
    redirect_to 'publishers_path'
  end

  def index
    @publisher = Publisher.all
  end

  def show
  end

private
  def publisher_params
  params.require(:publisher).permit!
  end

end
