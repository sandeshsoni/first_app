class AuthenticationsController < ApplicationController
  def index
    @authentications = Authentication.all
  end

def home
 @posts = Post.all


end

def twitter
#omni = request.env["omniauth.auth"]
raise omni = request.env["omniauth.auth"].to_yaml

end

  def create
    @authentication = Authentication.new(params[:authentication])
    if @authentication.save
      redirect_to authentications_url, :notice => "Successfully created authentication."
    else
      render :action => 'new'
    end
  end

  def destroy
    @authentication = Authentication.find(params[:id])
    @authentication.destroy
    redirect_to authentications_url, :notice => "Successfully destroyed authentication."
  end
end
