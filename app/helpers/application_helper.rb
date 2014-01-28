module ApplicationHelper

	# Checks if the current page is active
	def is_active?(page_name)
	  	# (params[:action] == page_name) ? "active" : current_page?(page_name)
	  	current_page?(page_name) ? "active" : "inactive"
	end
end