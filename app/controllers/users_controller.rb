require 'net/http'

class UsersController < ApplicationController
  before_action :search_and_save_data, only: %i[show]

  def index
  end

  def show
    @posts = Rails.cache.read('posts')
  end

  def search_and_save_data
    url = [
      'https://dev.to/api/articles/?username=', params[:username]
    ].join('')
    uri = URI(url)
    req = Net::HTTP::Get.new(uri)
    req['x-api-key'] = "Ki2f866dzDswx3mMHqBaPcbN"

    res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http|
      http.request(req)
    }

    Rails.cache.write('posts', JSON.parse(res.body) )
  end
end
