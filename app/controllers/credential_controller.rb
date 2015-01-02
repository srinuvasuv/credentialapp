class CredentialController < ApplicationController
  def login

  	
  	
 end

 def login1

 	$login_details=Reguser.where('email= ? AND password= ?',params["email"],params["password"])

	  	if !$login_details.empty?

	  		session[:userid]=$login_details[0].id
	  		$login_details[0].name
	  		$login_details[0].gender
	  		
	  		
	  		redirect_to viewper_path 

	  	else

			redirect_to login_path , :flash => { :error => "Your Login Is Failed Please Try Again " }
			# redirect_to(:action => index, :notice => "Successfully updated feature.") and return
	  	end	

 end
 def logout
 	session[:userid]=nil
 	redirect_to root_url
 	
 end

 
  def signup

  	unless params[:password].nil?

  		key = EzCrypto::Key.with_password('some password', 'some system salt', :algorithm => 'des')
  		@encrypted_pawd = key.encrypt(params[:password])
  		@pwd=@encrypted_pawd.force_encoding('Windows-1252').encode('UTF-8')

  		@reguser=Reguser.create(:name => params[:name],:password => @pwd,:email => params[:email],:phno => params[:phonenumber],:addrs => params[:addr],:gender => params[:gender])

  		if @reguser.save
  			
  			redirect_to  register_path , :flash => { :error => "Your Registration is sucessfully" }
  		end
  	end
  	




  		


 
  	
  end
end
