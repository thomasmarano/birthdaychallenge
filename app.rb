require 'sinatra/base'

class Birthday < Sinatra::Base
    get '/' do
        erb (:index)
    end

    post '/names-display' do
        @your_name = params[:your_name]
        @your_birthday = params[:date]
        @your_birth_month = params[:month]
        erb (:namesdisplay)
    end
    run! if app_file == $0
end
