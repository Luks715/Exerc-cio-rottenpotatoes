class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:title, :rating, :length, :description, :release_date))
    if @movie.save
      flash[:notice] = "#{@movie.title} was successfully created"
      redirect_to movies_path(@movie)
    else
      flash[:alert] = "there was an error during the creation #{@movie.title}"
      render 'new'
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(params.require(:movie).permit(:title, :rating, :length, :description, :release_date))
      flash[:notice] = "#{@movie.title} was successfully updated"
      redirect_to movies_path(@movie)
    else
      flash[:alert] = "#{@movie.title} could not be updated"
      render 'edit'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      flash[:notice] = "#{@movie.title} was successfully deleted"
      redirect_to movies_path
    else
      flash[:alert] = "#{@movie.title} could not be deleted, try again"
      render 'edit'
    end
  end
end
