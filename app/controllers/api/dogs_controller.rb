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
    @dog = Dog.find_by(id: params[:id])
    @dog.name = params[:name] || @dog.name
    @dog.breed = params[:breed] || @dog.breed
    @dog.age = params[:age] || @dog.age
    @dog.color = params[:color] || @dog.color
    @dog.bio = params[:bio] || @dog.bio
    @dog.adoptable = params[:adoptable] || @dog.adoptable

    if @dog.save
      render 'show.json.jb'
    else
      render json: {errors: @dog.errors.full_messages}, status: :unprocessable_entity
    end
  end



end
