require 'sinatra/base'

class MyApp < Sinatra::Base

  get '/' do
    erb :root
    # "<h1>Hello, World!</h1>" +
    # "<h3>This is my first app</h3>" +
    # "<a href='/greeting'>Go to greeting page</a>"
  end

  get '/greeting' do
    erb :greeting, :locals => { :salutation => "Aloha", :name => "Ian"}
    # "<h1>This is the greeting page</h1>" +
    # "<a href='/'>Back to root page</a>"
  end

  run! if app_file == $0

end