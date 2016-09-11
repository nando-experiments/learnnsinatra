# app/lib/app.rb
require 'sinatra'
require 'slim'

module SinatraTests
  class App < Sinatra::Base

    set :views, Proc.new { File.join(root, '../views') }
    set :public_folder, 'public'

    get '/' do
      slim :index
    end

  end
end
