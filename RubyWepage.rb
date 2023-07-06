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

<html style="background-color:DodgerBlue;">
    <head>
        <title>Hello, Wolrd!</title>
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
            <button><label for="greeting">How are you doing?</label></button>       
        </form>
    </body>
</html>