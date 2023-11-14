class Public::EggsController < ApplicationController
  def index
    @egg = Egg.find([:id])
  end

  def show
  end
end
