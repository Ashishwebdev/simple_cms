class ExampleControllerController < ApplicationController
def get_back
	logger.warn "It works"
	redirect_to :back
end 
  def example_index

  end
end
