class PublishersController < ApplicationController
  def index
    @publisher=Publisher.all
  end

  def show
    @publisher=Publisher.find(params[:id])
  end

  def new
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      redirect_to publishers_path
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def publisher_params
    params.require(:publisher).permit(:name,:country)
  end
end

