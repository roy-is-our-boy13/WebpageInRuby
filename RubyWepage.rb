require 'sinatra'

get '/' do
    erb :index
end

post '/greeting' do
    @greeting = params[:greeting]
    erb :index
end

__END__

@@index

<!DOCTYPE html>

<html>
    <head>
        <title>Hello, wolrd?</title>
    </head>
    <body>
        <h1>Hello, World!</h1>

        <% if @greeting %>
            <p>You said: <%= @greeting %></p>
        <% end %>

        <form>
            <button type = "submit">How are you doing?</button>
        </form>
    </body>
</html>