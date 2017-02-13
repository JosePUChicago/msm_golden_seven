class ActorsController < ActionController::Base

  def actors_list
    @list_of_actors= Actor.all
    render("actors.html.erb")
  end

  def details
    @actor=Actor.find_by({:id => params[:id]})
    render("actors/actor_details.html.erb")
  end

  def edit_form
    @actor=Actor.find_by({:id => params[:id]})
    render("actor_edit_form.html.erb")
  end

  def update_row
    #@actor=Actor.find_by({:id => params[:id]})
    a= Actor.find_by({:id=> params[:id]})
    a.name= params[:name]
    a.dob= params[:dob]
    a.bio= params[:bio]
    a.image_url= params[:image_url]
    a.save

    redirect_to("http://localhost:3000/actors")
  end

  def new_actor
    render("new_actor.html.erb")
  end

  def create_row
    c= Actor.new
    c.name= params[:name]
    c.dob= params[:dob]
    c.bio= params[:bio]
    c.image_url= params[:image_url]
    c.save

    redirect_to("http://localhost:3000/actors")
  end

  def delete
    d= Actor.find_by({:id => params[:id]})
    d.delete
    redirect_to("/actors")
  end
end
