class AuthorsController < ApplicationController
  def index
    @author=Author.all
  end

  def show
    @author=Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path, notice: "You have successfully created a new author"
    else
      redirect_to authors_path, alert: "You will need to be signed in to create a author"
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def search
    @author = if params[:term]
      Author.where('lname LIKE ?', "%#{params[:term]}")
    else
      Author.all
    end
  end

  private
  def author_params
    params.require(:author).permit(:fname, :lname, :bio)
  end
end