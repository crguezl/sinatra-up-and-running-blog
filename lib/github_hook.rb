require 'sinatra/base'
require 'time'

class GithubHook < Sinatra::Base

  def self.parse_git
    # Parse hash and date from the git log command.
    sha1, date = `git log HEAD~1..HEAD --pretty=format:%h^%ci`.strip.split('^')
    set :commit_hash, sha1
    set :commit_date, Time.parse(date)
  end

  set(:autopull) { production? }

  parse_git

  before do
#    cache_control :public, :must_revalidate
#    etag settings.commit_hash
#    last_modified settings.commit_date
  end

  #get '/update' do
  post '/update' do
    #push = JSON.parse(params[:payload])

    settings.parse_git
    app.settings.reset!
    load app.settings.app_file
    content_type :txt
    if settings.autopull?
      #output = "I got some JSON: #{push.inspect}"
      output = `git pull origin master 2>&1`
    else
      "ok"
    end
  end

end
