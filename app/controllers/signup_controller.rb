class SignupController < ApplicationController
 def index
    signup = [ { test: "Passed" } ]
    render :json => signup
  end
end