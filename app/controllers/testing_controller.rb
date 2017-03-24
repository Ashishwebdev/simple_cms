class TestingController < ApplicationController
  def index
     @testings = Testing.sorted
     render ('index')
  end

  def show
    @testing=Testing.find(params[:id])
  end

  def new
    @testing = Testing.new
  end
  def create
    @testing = Testing.new(params.require(:testing).permit(:name,:position,:visible))
     if @testing.save
      redirect_to ({:action=> 'index',:id=> @testing.id})
     end

   else
    return ('new')
   end

  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end


