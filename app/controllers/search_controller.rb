class SearchController < ApplicationController
	def search
		@pagenumber = params[:page] || 0
    	@results_size = 30
    	
		@results = Article.search(params[:search_box])
	end
end
