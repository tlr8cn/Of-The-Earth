class EmailController < ApplicationController
	def create

		status = "success"

		if params[:client]["wedding-send"]

		   	if params[:client]["weddinglocation"] != "" && params[:client]["receptionlocation"] != "" && params[:client]["date"] != "" && params[:client]["bridename"] != "" && params[:client]["groomname"] != "" && params[:client]["mailingaddress"] != "" && params[:client]["email"] != "" && params[:client]["phone"] != "" && params[:client]["about"] != ""

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

			    status = "success"
			else
				status = "fail"
			end

		elsif params[:client]["moment-send"]

			if params[:client]["momentname"] != "" && params[:client]["clientname"] != "" && params[:client]["email"] != "" && params[:client]["phone"] != "" && params[:client]["about"] != ""

				ApplicationMailer.moment_email(
			    	params[:client]["momentname"],
			    	params[:client]["clientname"],
			    	params[:client]["email"],
			    	params[:client]["phone"],
			    	params[:client]["about"],
			    	).deliver

				status = "success"
			else 
				status = "fail"
			end

		end	

		redirect_to controller: 'book_online', action: 'index', formStatus: status	    	#format.html { redirect_to @user, notice: 'User was successfully created.' }
	    #format.json { render :show, status: :created, location: @user }
	end
end
