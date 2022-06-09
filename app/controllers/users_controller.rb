require 'net/http'

class UsersController < ApplicationController
  before_action :search_and_save_data, only: %i[show]

  def index
  end

  def show
    @posts = Rails.cache.read('posts')
  end

  def search_and_save_data
    DevApiService.call! params[:username]
  end
end
