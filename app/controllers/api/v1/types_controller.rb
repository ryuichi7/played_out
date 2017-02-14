class Api::V1::TypesController < ApplicationController

  def index
    respond_with Type.all
  end

  def create
  end
end
