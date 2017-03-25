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
    @testing = Testing.new(testing_param)
       if @testing.save
      redirect_to ({:action=> 'index',:id=> @testing.id})

       else
    render ('new')
       end

  end

  def edit
    @testing = Testing.find(params[:id])
    render('edit')
  end

  def update
   
    @testing = Testing.find(params[:id])

   if @testing.update_attributes(testing_param)    
      redirect_to ({:action=> 'index',:id=> @testing.id})
   else
    render ('new')
   end

  end

  def delete
    @testing = Testing.find(params[:id])
  end

  def destroy
     @testing = Testing.find(params[:id])
     @testing.destroy
     render('index')
  end

private

def testing_param
  params.require(:testing).permit(:name,:position,:visible)
end

end