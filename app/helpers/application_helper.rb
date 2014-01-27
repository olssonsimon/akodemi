module ApplicationHelper
	def is_active?(page_name)
		puts page_name
	  	"active" if params[:action] == page_name
	end
end
