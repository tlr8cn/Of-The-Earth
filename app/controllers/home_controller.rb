class HomeController < ApplicationController
  def index
    @baseUrl = request.domain
  end
end
