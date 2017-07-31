class EmailController < ApplicationController
	def create

		if params[:client]["wedding-send"]

		    # Sends email to user when user is created.
		    ApplicationMailer.wedding_email(
		    	params[:client]["weddinglocation"],
		    	params[:client]["receptionlocation"],
		    	params[:client]["date"],
		    	params[:client]["bridename"],
		    	params[:client]["groomname"],
		    	params[:client]["mailingaddress"],
		    	params[:client]["email"],
		    	params[:client]["phone"],
		    	params[:client]["engagement"],
		    	params[:client]["bridal"],
		    	params[:client]["about"]
		    	).deliver

		elsif params[:client]["moment-send"]

			ApplicationMailer.moment_email(
		    	params[:client]["momentname"],
		    	params[:client]["clientname"],
		    	params[:client]["email"],
		    	params[:client]["phone"],
		    	params[:client]["about"],
		    	).deliver

		end	

		redirect_to :controller => 'book_online', :action => 'index'	    	#format.html { redirect_to @user, notice: 'User was successfully created.' }
	    #format.json { render :show, status: :created, location: @user }
	end
end
