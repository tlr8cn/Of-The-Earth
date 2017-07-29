class EmailController < ApplicationController
	def create
	    # Sends email to user when user is created.
	    ApplicationMailer.wedding_email.deliver

		redirect_to :controller => 'book_online', :action => 'index'	    	#format.html { redirect_to @user, notice: 'User was successfully created.' }
	    #format.json { render :show, status: :created, location: @user }
	end
end
