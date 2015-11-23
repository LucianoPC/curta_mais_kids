class HomeController < ApplicationController

  def index
    redirect_to action: :kids
  end

  def kids
  end
end
