class AccountController < ApplicationController

  def index

  end

  def new
    # CAS callback results
    cas_hash = request.env['omniauth.auth']

    # cPanel API user, key, and url
    key = ENV["CPANEL_KEY"]
    url = ENV["CPANEL_URL"]
    user = ENV["CPANEL_USER"]

    # Build API request path
    #uri = URI.parse(api_uri_createacct)
    #uri.query = [uri.query, "username=#{new_user}"].compact.join('&')
    #uri.query = [uri.query, "password=#{new_password}"].compact.join('&')

  end

  def create

  end

end
