enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index

end


get '/login' do

  erb :deck
end

before '/deck' do
  authenticate
end

get '/deck' do
  erb :deck
end

post  '/signup' do
  p "=====signup======"
  @user = User.new(params)
  if @user.save
    p "=============succcesfully register=============="
    redirect "/"
  else
    p "================failed to register============="
    redirect "/"
  end
end

post "/login" do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    session[:user_id] = @user.id
    p "================login succcesfully============"
    redirect '/deck'
  else
    p "login failed"
    redirect '/'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

private

def authenticate
  if session[:user_id]
    true
  else
    redirect '/'
  end
end