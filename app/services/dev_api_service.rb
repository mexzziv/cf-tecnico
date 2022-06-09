class DevApiService < ApplicationService

  def call!
    username_cache = Rails.cache.read('username_cache')
    if(username_cache != username)
      url = [
        'https://dev.to/api/articles/?username=', username
      ].join('')
      uri = URI(url)
      req = Net::HTTP::Get.new(uri)
      req['x-api-key'] = "Ki2f866dzDswx3mMHqBaPcbN"

      res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http|
        http.request(req)
      }

      Rails.cache.write('posts', JSON.parse(res.body) )
      Rails.cache.write('username_cache', username)
    end
  end

  private

  attr_accessor :username

  def initialize(username)
    self.username = username
  end
end