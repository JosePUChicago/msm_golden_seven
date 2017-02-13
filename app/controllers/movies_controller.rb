class MoviesController < ActionController::Base

  def movies_list
    @list_of_movies= Movie.all
    render("movies.html.erb")
  end

  def details
    @movie= Movie.find_by({:id=> params[:id]})
    render("movie_details.html.erb")
  end

  def edit_form
    @movie= Movie.find_by({:id=> params[:id]})
    render("movie_edit_form.html.erb")
  end

  def update_row
    m=Movie.find_by({:id=> params[:id]})
    m.title= params[:title]
    m.year= params[:year]
    m.duration= params[:duration]
    m.description= params[:description]
    m.image_url= params[:image_url]
    m.save

    redirect_to("http://localhost:3000/movies")
  end

  def new_movie
    render("new_movie.html.erb")
  end

  def create_row
    f= Movie.new
    f.title= params[:title]
    f.year= params[:year]
    f.duration= params[:duration]
    f.description= params[:description]
    f.image_url= params[:image_url]
    f.save

    redirect_to("http://localhost:3000/movies")
  end

  def delete
    d= Movie.find_by({:id=> params[:id]})
    d.delete
    redirect_to("http://localhost:3000/movies")
  end
end
