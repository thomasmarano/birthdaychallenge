require 'sinatra/base'

class Birthday < Sinatra::Base
    get '/' do
        'Hello world!'
    end

    
    run! if app_file == $0
end
