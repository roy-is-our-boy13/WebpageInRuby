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
        <title>Hello, Wolrd?</title>
        <script>
        function showAlert() 
        {
            alert("Good afternoon");
        }
        </script>
    </head>
    <body>
        <h1>Hello, World!</h1>

        <% if @greeting %>
            <p>You said: <%= @greeting %></p>
        <% end %>

        <form>
            <button type = "submit" onclick="showAlert()">How are you doing?</button>
        </form>
    </body>
</html>