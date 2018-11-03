class MakeupController < ApplicationController

  def index
    @makeup = Makeup.all
  end

  def create
    
  end
end
