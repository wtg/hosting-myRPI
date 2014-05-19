class AccountController < ApplicationController

  def index
  end

  def new
    @cas_hash = request.env['omniauth.auth']
  end

  def create
    # CAS callback results
    @cas_hash = request.env['omniauth.auth']
    domain = @cas_hash['uid']

    server = whm_api

    result = server.account.create(
      username: @cas_hash['uid'],
      domain: "#{domain}.sgsbw.union.rpi.edu",
      password: 'password'
    )
  end

  def signup
  end

  def login
  end

end
