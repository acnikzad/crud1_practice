class Api::DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render 'index.json.jb'
  end

  def create
    @dogs = Dog.new(

  name: params[:name],
  breed: params[:breed],
  age: params[:age],
  color: params[:color],
  bio: params[:bio],
  adoptable: params[:adoptable]
      )
  @dogs.save
  render 'show.json.jb'
  end

  def update
  end


end
