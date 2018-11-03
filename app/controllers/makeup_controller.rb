class MakeupController < ApplicationController

  def index
    @makeup = Makeup.all
  end

  
end
