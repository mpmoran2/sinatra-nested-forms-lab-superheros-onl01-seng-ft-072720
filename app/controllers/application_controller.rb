require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :assign
    end 

    post '/teams' do
        puts params
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @members = params[:team][:members]

        erb :team
    end 

end
