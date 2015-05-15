class SearchController < ApplicationController
  def search 
	if params[:q].nil?
		@electives = []
	else
		@electives = Elective.search params[:q]	
        end
  end
end
