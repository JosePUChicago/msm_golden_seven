class DirectorsController < ActionController::Base

  def directors_list
    @list_of_directors=Director.all
    render("directors.html.erb")
  end

  def details
    @director=Director.find_by({:id => params[:id]})
    render("director_details.html.erb")
  end

  def edit_form
    @director= Director.find_by({:id => params[:id]})
    render("director_edit_form.html.erb")
  end

  def update_row
    #@director= Director.find_by({:id => params[:id]})
    u= Director.find_by({:id => params[:id]})
    u.name= params[:name]
    u.dob= params[:dob]
    u.bio= params[:bio]
    u.image_url= params[:image_url]
    u.save

    redirect_to("http://localhost:3000/directors")
  end

  def new_director
    render("new_director.html.erb")
  end

  def create_row
    t= Director.new
    t.name= params[:name]
    t.dob= params[:dob]
    t.bio= params[:bio]
    t.image_url= params[:image_url]
    t.save

    redirect_to("http://localhost:3000/directors")
  end

  def delete
    d=Director.find_by({:id => params[:id]})
    d.delete
    redirect_to("http://localhost:3000/directors")
  end
end
