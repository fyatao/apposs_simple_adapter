class HomeController < ApplicationController
  before_filter :sso_auth, :except => [:index,:callback]

  def index
  end

  def other
  end

end
