class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect to root_url, :notice => "signed up!"
    else
      render :new
    end
  end
  
end
